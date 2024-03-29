/**
 实例1:
 var config = {
 //可选值为 alert|hint 前者为弹出对话框的方式报告错误，后者为DIV的方式，需要表单页面中存在错误报表的DIV
 //每个表单组件对应一个自己的HINT错误报告DIV，默认DIV ID为：组件名+Hint，如aaa.userName
 //对应的错误报告DIV的默认ID为aaa.userNameHint,也可以通过hintId指定自定义的DIV。
 report:"alert",
 //对表单组件的校验规则进行配置，每一个表单组件对应一个项
 props:[
 {
 required:true,
 //是否必填，默认为false;
 trim:true,
 //在检验长度时，是否需要先去除前后的空格，默认为true
 label:"姓名",
 //组件对应的中文名.
 name:"aaa.userName",
 //组件ID名
 hintMsg:"sdddd",
 //长度校验规则，有4个属性：min,max,fixlen,unit,如果是范围可以使用min和max，支持开区间，如
 //长度必须小于 100，仅设置max:100就可以了，如果必须大于10，则仅需设置min:10。如果需要固定长度
 //可以通过fixlen属性来设置,unit为长度测量的单位：byte|char，默认为byte（一个中文对应2个字节长度）
 lengthRange:{min:6,max:10,unit:"byte"}
 },
 {
 required:false,
 label:"代码",
 name:"aaa.tel",
 //支持的数据格式有:
 //email：电子邮件
 //tel：电话
 //postcode:邮政编码
 //url：URL
 //an:数英及下划线
 //en:英文字符（ASCII字符）
 //cn:中文字符
 //int:整数
 //number 数字类型，支持标准数据表示形式，如number(4,2),number(4)等。
 //date:日期,可以通过date(yyyy-MM-dd HH:mm:SS)等方式指定时间类型,默认为date(yyyy-MM-dd)
 dataType:'an'
 },
 {
 required:true,
 trim:true,
 label:"年龄",
 name:"aaa.age",
 pattern:{regExp:/\d{2,3}/,errorMsg:"年龄的格式不正确，请检查！"},
 //如果是数字，则可以指定范围，min和max至少要设置一个属性。
 valueRange:{min:18,max:100}
 },
 {
 trim:true,
 label:"邮编",
 name:"aaa.postCode",
 hintId:"aaa.postCodeDiv",
 lengthRange:{fixlen:6,unit:"byte"},
 //支持正则表达式判断组件值的合法性
 pattern:{regExp:/\d{6}/,errorMsg:"格式不正确，请检查！"},

 //你也可以自定义一个JS函数，对组件值进行额外的判断。
 //prop:校验配置对象，参见上面配置JSON格式的说明
 //value：当前组件的值
 //validResult：校验的结果对象，如果验证失败，必须调用该对象的setErrorMsg()方法
 //设置错误信息，以便错误汇报器向外汇报错误
 //校验通过返回true,校验失败返回false
 jsFunction:function(prop, value, validResult) {
 if (parseInt(value) % 2 != 0) {
 validResult.setErrorMsg(prop.formatLabel + "只能为偶数");
 return false;
 } else {
 return true;
 }
 }
 },
 {
 required:true,
 label:"日期",
 name:"aaa.date1",
 dataType:'date(yyyy-MM-dd HH:mm:ss)'
 }
 ]
 }  ;


 var c = new CheckValid(config);
 function testCheck() {
 var result = c.checkAll();
 }
 */
var CheckValid = function(config){
	this.reportMode = config.report || 'alert';
    this.config = config;
    this.requiredCheckIgnore = false;
}
CheckValid.prototype = {
    /**
     * 对表单进行校验
     */
    checkAll:function()
    {
        this.init();
        var properties = this.config.props;
        for (var i = 0; i < properties.length; i++)
        {
            this.checkProperty(properties[i]);
        }
        return this.getCheckResult();
    },
    /**
     * 忽略必填项校验
     * @param requiredCheckIgnore
     */
    setRequiredCheckIgnore:function(requiredCheckIgnore){
       this.requiredCheckIgnore = requiredCheckIgnore;
    },
    checkProperty:function(property)
    {
        var trim = property.trim || true;
        var propElem = getPropElem(property.name);

        //如果该元素找不到，则不进行验证  add  by chenmk 2008.06.11
        if (propElem == null)
            return true;

        var propValue = propElem.value;
        if (trim && propValue) {
            propValue = propValue.trim();
            propElem.value = propValue;
        }

        //验证空值
        var required = property.required || false;
        if (!this.requiredCheckIgnore && required) {
            if (!this.checkRequired(property, propValue)) return false;
        } else if (!propValue || propValue == "") {//不强制且无值，无需继续判断
            return true;
        }

        //验证数据类型
        if (property.dataType)
        {
            if (!this.checkDataType(property, propValue))
            {
                return false;
            }
        }

        //验证模式匹配
        if (property.pattern)
        {
            if (!this.checkPattern(property, propValue))
            {
                return false;
            }
        }

        //验证长度
        if (property.lengthRange)
        {
            if (!this.checkLen(property, propValue))
            {
                return false;
            }
        }

        //验证值域
        if (property.valueRange)
        {
            if (!this.checkValue(property, propValue))
            {
                return false;
            }
        }


        //自定义函数
        var fun = property.jsFunction;
        if (fun)
        {
            try {
                if (typeof fun == "string") {
                    eval("fun=" + fun);
                }
            } catch(e) {
                alert("自定义函数配置有错误：\n" + fun);
                return false;
            }
            var validResult = this.validResultMap[property.name];
            return fun(property, propValue, validResult);
        }
        this.setCheckRight(property.name);
    },
    checkDataType:function(property, value) {

        if (property.dataType.toUpperCase() == 'EMAIL' && !checkEmail(value)) {
            var errorMsg = property.formatLabel + "必须为合法的Email格式，例如tom@163.com，zhangsan@yahoo.com.cn等。";
            this.setCheckError(property.name, errorMsg);
            return false;
        } else if (property.dataType.toUpperCase() == 'TEL' && !checkTel(value)) {
            var errorMsg = property.formatLabel + "必须为合法的电话格式，只能包括数字和-，如010-2412312,8765432等。";
            this.setCheckError(property.name, errorMsg);
            return false;
        } else if (property.dataType.toUpperCase() == 'POSTCODE' && !checkPostcode(value)) {
            var errorMsg = property.formatLabel + "必须为合法的邮政编码格式，即6位数字，如010010,361005等。";
            this.setCheckError(property.name, errorMsg);
            return false;
        } else if (property.dataType.toUpperCase() == 'URL' && !checkURL(value)) {
            var errorMsg = property.formatLabel + "必须为合法的URL格式，如http://www.google.com等。";
            this.setCheckError(property.name, errorMsg);
            return false;
        } else if (property.dataType.toUpperCase() == 'AN' && !checkPwd(value)) {
            var errorMsg = property.formatLabel + "只能由数字，英文字符和_组成。";
            this.setCheckError(property.name, errorMsg);
            return false;
        } else if (property.dataType.toUpperCase() == 'EN' && !checkEnglish(value)) {
            var errorMsg = property.formatLabel + "只能由英语字符组成，不能包含中文字符，如123adf,abad#等。";
            this.setCheckError(property.name, errorMsg);
            return false;
        } else if (property.dataType.toUpperCase() == 'CN' && !checkChinese(value)) {
            var errorMsg = property.formatLabel + "只能输入中文字符，如：中国，人民等";
            this.setCheckError(property.name, errorMsg);
            return false;
        } else if (property.dataType.toUpperCase().indexOf("NUMBER") > -1) {
            var propResult = checkNumber(property);
            if (!propResult.result) {
                this.setCheckError(property.name, propResult.msg);
                return false;
            }
        } else if (property.dataType.toUpperCase().indexOf("INT") > -1) {
            var propResult = checkInteger(property);
            if (!propResult.result) {
                this.setCheckError(property.name, propResult.msg);
                return false;
            }
        } else if (property.dataType.toUpperCase().indexOf("DATE") > -1) {
            var propResult = checkDate(property);
            if (!propResult.result) {
                this.setCheckError(property.name, propResult.msg);
                return false;
            }
        }
        return true;

        //电子邮件地址校验
        function checkEmail(value)
        {
            var reg = new RegExp("^([\.a-zA-Z0-9_-]){3,}@([a-zA-Z0-9_-]){3,}(\.([a-zA-Z0-9]){2,4})*$");
            if (!reg.test(value)) {
                return false;
            }
            return true;
        }

        //电话号码校验
        function checkTel(value)
        {
            if (!/^([0-9])*-?([0-9])*$/.test(value)) {
                return false;
            }
            return true;
        }

        //邮编校验
        function checkPostcode(value)
        {
            if (!/^([0-9])*([0-9])*$/.test(value)) {
                return false;
            }
            return true;
        }

        //URL校验
        function checkURL(value)
        {
            if (!/^HTTP|HTTPS|FTP|MAILTO/i.test(value)) {
                return false;
            }
            return true;
        }

        //密码校验
        function checkPwd(value)
        {
            if (!/^[a-zA-Z0-9_]+$/.test(value)) {
                return false;
            }
            return true;
        }

        //英文字符
        function checkEnglish(value)
        {
            if (!/^[\x00-\xff]+$/.test(value)) {
                return false;
            }
            else {
                return true;
            }
        }

        //中文字符
        function checkChinese(value)
        {
            if (!/^[^\x00-\xff]+$/.test(value)) {
                return false;
            }
            else {
                return true;
            }
        }

        //整数校验
        function checkInteger(property)
        {
            var title = property.label;
            var dataType = property.dataType;
            var val = getPropElem(property.name).value;
            /*try{*/
            if (/^(-|\+)+/.test(val)) {
                var msg = "输入" + title + "不能带有正负(+，-)符号。";
                return new PropResult(false, msg);
            }

            if (/(\.)+/.test(val)) {
                var msg = "输入" + title + "不能带有小数点(.)符号。";
                return new PropResult(false, msg);
            }
            /*}
             catch(ex){
             alert("checkInteger()发生错误。");
             }*/
            dataType = (new String(dataType)).toUpperCase();
            dataType = dataType.replace("INT", "NUMBER");
            return checkNumber(property, dataType);
        }

        //数字格式
        function checkNumber(property, dataType)
        {
            var value = getPropElem(property.name).value;
            var dataType = dataType || property.dataType;
            var msg = null;
            //处理输入值是否包含有单引号或双引号,如果包含就不进行以下处理啦,数据中是不可能有单引号或双引号的
            if (/\'|\"/.test(value)) {
                msg = "输入" + property.formatLabel + "非法，数字中包含有单引号或双引号。";
                return new PropResult(false, msg);
            }

            var fuc = dataType;

            fuc = (new String(fuc)).toUpperCase();
            /*try{*/
            if (/^NUMBER$/i.test(fuc)) {// number
                fuc = "NUMBER(-1,-1,property)";
            }
            else if (/\(\)/.test(fuc)) { // number()
                fuc = "NUMBER(-1,-1,property)";
            }
            else if (/\(([0-9])*\)/.test(fuc)) {// number(5)
                    fuc = fuc.replace(")", ",-1,property)");
                }
                else {// number(5,2)
                    fuc = fuc.replace(")", ",property)");
                }
            return eval(fuc);
            /*}
             catch(ex){
             alert('checkNumber()函数运行时，发生异常，异常信息为:'+ex.description);
             return PropResult(false);
             }*/
            return new PropResult(true);
        }

        function NUMBER(L1, L2, property)
        {
            var Num = getPropElem(property.name).value;
            var msg = null;
            if (!/^(-|\+|([0-9]))([0-9])*\.?([0-9])*$/.test(Num)) {
                msg = property.formatLabel + "含有不是数字的字符。";
                return new PropResult(false, msg);
            }
            var Numstr = Num;
            Numstr = Numstr.replace("-", "");
            Numstr = Numstr.replace("+", "");

            if (/^00/.test(Numstr)) {
                msg = msg = property.formatLabel + "不合理。";
                ;
                return new PropResult(false, msg);
            }

            Numstr = Numstr.replace(".", "");

            if (L1 > 0) {
                if (Numstr.length > L1) {
                    msg = "输入数字" + property.formatLabel + "的长度太长，长度应不超过" + L1 + "位。";
                    return new PropResult(false, msg);
                }
                else {
                    if (L2 > 0) {
                        if (!/\./.test(Num)) {
                            if (Num.length > L1 - L2) {
                                msg = "输入数字" + property.formatLabel + "的整数位太多，长度应不超过" + (L1 - L2) + "位。";
                                return new PropResult(false, msg);
                            }
                        }
                        else {
                            var res = /\./.exec(Num);
                            try {
                                var pos = res.index;
                                if (pos > L1 - L2) {
                                    msg = "输入数字" + property.formatLabel + "的整数位太多，长度应不超过" + (L1 - L2) + "位。";
                                    return new PropResult(false, msg);
                                }
                                if (Numstr.length - pos > L2) {
                                    msg = "输入数字" + property.formatLabel + "的小数位太多，长度应不超过" + L2 + "位小数。";
                                    return new PropResult(false, msg);
                                }
                            }
                            catch(ex) {
                            }
                        }
                    }
                }
            }
            return new PropResult(true);
        }

        //时间类型校验
        function checkDate(property) {
            var value = getPropElem(property.name).value;
            var dataType = property.dataType;

            //默认为yyy-MM-dd
            var originFormat = dataType.indexOf("(") > -1 ? dataType.substring(dataType.indexOf("(") + 1, dataType.indexOf(")")) : 'yyyy-MM-dd';
            //如果是时间类型，将数据的范围调整为格式化串对应的范围
            if (property.lengthRange) {
                property.lengthRange.min = originFormat.length;
                property.lengthRange.max = originFormat.length;
            }
            var format = originFormat;
            //format = format.toLowerCase();

            format = toExtDateFormat(format);
            var dt = null;
            try {
                dt = Date.extParseDate(value, format);
            } catch(e) {
                alert(e.toString());
                var msg = property.formatLabel + "的格式不正确，正确的格式必须为" + originFormat + ",请更正。";
                return new PropResult(false, msg);
            }
            if (typeof(dt) == "undefined")
            {
                var msg = property.formatLabel + "的格式不正确，正确的格式必须为" + originFormat + ",请更正。";
                return new PropResult(false, msg);
            } else {
                return new PropResult(true);
            }
        }

        //时间类型转换，将自定义的时间格式化串转换为EXT的格式化串
        function toExtDateFormat(format) {
            format = format.replace("yyyy", "Y");
            format = format.replace("yy", "y");
            format = format.replace("mm", "i");
            format = format.replace("dd", "d");
            format = format.replace("HH", "H");
            format = format.replace("ss", "s");
            format = format.replace("MM", "m");
            return format;
        }
    },
    checkRequired:function(property, value)
    {
        if (property.required) {
            if (!value || value == "")
            {
                var errorMsg = property.formatLabel + "必须填写，不能为空。";
                this.setCheckError(property, errorMsg);
                return false;
            }
            return true;
        }
        return true;
    },
    checkLen:function(property, value)
    {
        var lengthRange = property.lengthRange;
        var unit = lengthRange.unit || 'byte';
        var len = getLength(value);
        if (lengthRange.fixlen) {//固定长度
            if (len != lengthRange.fixlen) {

                var errorMsg = property.formatLabel + "的长度必须为" + lengthRange.fixlen + "个" + (unit == 'byte' ? "字节" : "字符") + "长度";
                if (unit == 'byte') {
                    errorMsg += "\n(注:中文字符为2个字节长度，英文、数字及普通的符号为1个字节长度)";
                }
                this.setCheckError(property, errorMsg);

                return false;
            } else {
                return true;
            }
        } else {//范围
            var min = parseInt(lengthRange.min, 10) || Number.MIN_VALUE;
            var max = parseInt(lengthRange.max, 10) || Number.MAX_VALUE;
            var errorMsg = property.formatLabel + "的长度必须在" + min + "~" + max + "个" + (unit == 'byte' ? "字节" : "字符") + "之间";
            var isValid = true;
            if (len < min)//小于最小长度
            {
                isValid = false;
                if (lengthRange.min) {
                    errorMsg = property.formatLabel + "的长度必须大于(含等于)" + min + "个" + (unit == 'byte' ? "字节" : "字符");
                }
            }
            if (len > max)//大于最大长度
            {
                isValid = false;
                if (lengthRange.max) {
                    errorMsg = property.formatLabel + "的长度必须小于(含等于)" + max + "个" + (unit == 'byte' ? "字节" : "字符");
                }
            }
            if (unit == 'byte') {
                errorMsg += "\n(注:中文字符为2个字节长度，英文、数字及普通的符号为1个字节长度)";
            }
            if (!isValid) {
                this.setCheckError(property, errorMsg);
            } else {
                return true;
            }
        }
        function getLength(val)
        {
            if (!val) return 0;
            else
            {
                return unit == 'byte' ? val.getByteLen() : val.getCharLen();
            }
        }
    },
    checkValue:function(property, value)
    {
        var valueRange = property.valueRange;
        var min = valueRange.min || Number.MIN_VALUE;
        var max = valueRange.max || Number.MAX_VALUE;
        var range = (min == Number.MIN_VALUE || max == Number.MAX_VALUE ) ? true : false;
        _value = parseFloat(value);

        var errorMsg = property.formatLabel + "的值必须在" + min + "~" + max + "之间";
        var isValid = true;

        if (_value < min)//小于最小值
        {
            isValid = false;
            if (!range) {
                errorMsg = property.formatLabel + "的值必须大于(含等于)" + min;
            }
        }
        if (_value > max)//大于最大值
        {
            isValid = false;
            if (!range) {
                errorMsg = property.formatLabel + "的值必须小于(含等于)" + max;
            }
        }
        if (!isValid) {
            this.setCheckError(property, errorMsg);
        } else {
            return true;
        }
    },
    checkPattern:function(property, value)
    {
        var pattern = property.pattern;
        var regExp = pattern.regExp;
        /*
         * 如果传入的是字符串，则转换成正则表达式对象
         * 如果是使用使用perl风格的语法：/expression/gi;则不需要转换
         * add by chenmk 2007.11.25
         */
        if ((typeof regExp) == "string") { //update by linkx 2009/7/30
            if (regExp.charAt(0) == "/" && regExp.charAt(regExp.length - 1) == "/") { //删除字符串头尾"/"
                regExp = regExp.substring(1, regExp.length - 1);
            }
            regExp = new RegExp(regExp);
        }
        if (!regExp.test(value))
        {
            this.setCheckError(property, pattern.errorMsg);
            return false;
        }
        return true;
    },
    //设置错误信息
    setCheckError:function(prop, msg) {
        var validResult = this.validResultMap[prop.name];
        if (typeof(validResult) == "undefined") {
            validResult = this.validResultMap[prop];
        }
        validResult.setError(msg);
    },

    //设置检验正确
    setCheckRight:function(propName) {
        var validResult = this.validResultMap[propName];
        validResult.setPassed();
    },

    init:function()
    {
        this.validResultMap = {};
        var props = this.config.props;
        var propName = null;
        var propLabel = null;
        var validResult = null;
        var hintId = null;
        var propElem = null;
        for (var j = 0; j < props.length; j++)
        {
            propName = props[j].name;
            propLabel = props[j].label || propName;
            props[j].formatLabel = "[" + propLabel + "]";
            validResult = new ValidResult(propName, propLabel);
            //            var hintHtml = props[j].hintMsg || propLabel + "检验不正确";
            //            validResult.setError(hintHtml);
            if (this.reportMode == 'hint')
            {
                hintId = props[j].hintId ?
                             props[j].hintId : propName + "Hint";
                validResult.setHintId(hintId);
                document.getElementById(hintId).innerHTML = hintHtml;
                propElem = getPropElem(propName);
                propElem.onfocus = this.onFocus.bind(this);
                propElem.onblur = this.onBlur.bind(this);
            }
            this.validResultMap[propName] = validResult;
        }
    },
    onFocus:function()
    {
        var propName = event.srcElement.name;
        var validResult = this.validResultMap[propName];
        if (validResult.status == 0 || validResult.status == 1)
        {
            document.getElementById(validResult.hintId).className = "activeHint";
        }
        else
        {
            document.getElementById(validResult.hintId).className = "errorHint";
        }
    },
    onChange:function()
    {

    },
    onBlur:function()
    {
        var propName = event.srcElement.name;
        var _name = propName;
        var property = null;
        property = this.getProp(_name);

        var rst = this.checkProperty(property);
        alert(rst);
        var validResult = this.validResultMap[propName];
        if (rst)
        {
            validResult.status = 1;
        }

        if (validResult.status == 0 || validResult.status == 1)
        {
            document.getElementById(validResult.hintId).className = "normalHint";
        }
        else if (validResult.status == -1)
        {
            document.getElementById(validResult.hintId).className = "errorHint";
        }


    },
    //获取组件对应的校验规则
    getProp:function (propName) {
        var props = this.config.props ;
        for (var i = 0; i < props.length; i++) {
            if (props[i].name == propName) return props[i];
        }
    },

    getCheckResult:function()
    {
    	var validResult = null;
    	var errorMsg = null;
        for (propName in this.validResultMap) {
            validResult = this.validResultMap[propName];
            if (validResult.status == -1)
            {
                if (this.reportMode == 'alert')
                {
                    errorMsg = validResult.msg;
                    alert(errorMsg);
                    try {
                        getPropElem(validResult.propName).focus();
                    } catch(e) {

                    }
                    return false;
                }
                else
                {
                    /**todo*/
                }

            }
        }
        return true;
    }
}
//校验结果类
var ValidResult = function(propName, propLabel){
	this.propName = propName;
    this.propLabel = propLabel;
    this.status = this.UNCHECK;
}
ValidResult.prototype = {
    //status -1 验证失败 0 未填值，初始态 1 验证通过
    ERROR:-1,
    UNCHECK:0,
    PASSED:1,
    setHintId:function(hintId)
    {
        this.hintId = hintId;
    },
    setError:function(msg)
    {
        this.status = this.ERROR;
        this.msg = msg;
    },
    setPassed:function() {
        this.status - this.PASSED;
    }
}

//用于保存一个属性的校验结果：后面加的
var PropResult = function(result, msg){
	this.result = result;
    this.msg = msg;
}
PropResult.prototype = {

}

//扩展String对象
String.prototype.getCharLen = function(){
        return this.length;
 }
String.prototype.getByteLen = function(){
    var len = 0;
    for (var i = 0; i < this.length; i++)
    {
        if (this.charCodeAt(i) > 255) len += 2;
        else len++;
    }
    return len;
}
String.prototype.trim=function(){
	var blank = /^\s+|\s+$|　/g;
	return this.replace(blank, "");
}

/**使用EXT的Date JS类*/
//-------------------------------------------------------
// private
Date.parseFunctions = {count:0};
// private
Date.parseRegexes = [];
// private
Date.formatFunctions = {count:0};

// private
Date.prototype.dateFormat = function(format) {
    if (Date.formatFunctions[format] == null) {
        Date.createNewFormat(format);
    }
    var func = Date.formatFunctions[format];
    return this[func]();
};

Date.prototype.format = Date.prototype.dateFormat;

// private
Date.createNewFormat = function(format) {
    var funcName = "format" + Date.formatFunctions.count++;
    Date.formatFunctions[format] = funcName;
    var code = "Date.prototype." + funcName + " = function(){return ";
    var special = false;
    var ch = '';
    for (var i = 0; i < format.length; ++i) {
        ch = format.charAt(i);
        if (!special && ch == "\\") {
            special = true;
        }
        else if (special) {
            special = false;
            code += "'" + myEscape(ch) + "' + ";
            //code += "'" + ch + "' + ";
        }
        else {
            code += Date.getFormatCode(ch);
        }
    }
    eval(code.substring(0, code.length - 3) + ";}");
};

// private
Date.getFormatCode = function(character) {
    switch (character) {
        case "d":
            return "myLeftPad(this.getDate(), 2, '0') + ";
        case "D":
            return "Date.getShortDayName(this.getDay()) + "; // get L10n short day name
        case "j":
            return "this.getDate() + ";
        case "l":
            return "Date.dayNames[this.getDay()] + ";
        case "N":
            return "(this.getDay() ? this.getDay() : 7) + ";
        case "S":
            return "this.getSuffix() + ";
        case "w":
            return "this.getDay() + ";
        case "z":
            return "this.getDayOfYear() + ";
        case "W":
            return "myLeftPad(this.getWeekOfYear(), 2, '0') + ";
        case "F":
            return "Date.monthNames[this.getMonth()] + ";
        case "m":
            return "myLeftPad(this.getMonth() + 1, 2, '0') + ";
        case "M":
            return "Date.getShortMonthName(this.getMonth()) + "; // get L10n short month name
        case "n":
            return "(this.getMonth() + 1) + ";
        case "t":
            return "this.getDaysInMonth() + ";
        case "L":
            return "(this.isLeapYear() ? 1 : 0) + ";
        case "o":
            return "(this.getFullYear() + (this.getWeekOfYear() == 1 && this.getMonth() > 0 ? +1 : (this.getWeekOfYear() >= 52 && this.getMonth() < 11 ? -1 : 0))) + ";
        case "Y":
            return "this.getFullYear() + ";
        case "y":
            return "('' + this.getFullYear()).substring(2, 4) + ";
        case "a":
            return "(this.getHours() < 12 ? 'am' : 'pm') + ";
        case "A":
            return "(this.getHours() < 12 ? 'AM' : 'PM') + ";
        case "g":
            return "((this.getHours() % 12) ? this.getHours() % 12 : 12) + ";
        case "G":
            return "this.getHours() + ";
        case "h":
            return "myLeftPad((this.getHours() % 12) ? this.getHours() % 12 : 12, 2, '0') + ";
        case "H":
            return "myLeftPad(this.getHours(), 2, '0') + ";
        case "i":
            return "myLeftPad(this.getMinutes(), 2, '0') + ";
        case "s":
            return "myLeftPad(this.getSeconds(), 2, '0') + ";
        case "u":
            return "myLeftPad(this.getMilliseconds(), 3, '0') + ";
        case "O":
            return "this.getGMTOffset() + ";
        case "P":
            return "this.getGMTOffset(true) + ";
        case "T":
            return "this.getTimezone() + ";
        case "Z":
            return "(this.getTimezoneOffset() * -60) + ";
        case "c":
            for (var df = Date.getFormatCode, c = "Y-m-dTH:i:sP", code = "", i = 0, l = c.length; i < l; ++i) {
                var e = c.charAt(i);
                code += e == "T" ? "'T' + " : df(e); // treat T as a literal
            }
            return code;
        case "U":
            return "Math.round(this.getTime() / 1000) + ";
        default:
            return "'" + myEscape(character) + "' + ";
        //return "'" + character + "' + ";
    }
};

Date.extParseDate = function(input, format) {
    if (Date.parseFunctions[format] == null) {
        Date.createParser(format);
    }
    var func = Date.parseFunctions[format];
    return Date[func](input);
};

// private
Date.createParser = function(format) {
    var funcName = "parse" + Date.parseFunctions.count++;
    var regexNum = Date.parseRegexes.length;
    var currentGroup = 1;
    Date.parseFunctions[format] = funcName;

    var code = "Date." + funcName + " = function(input){\n"
            + "var y = -1, m = -1, d = -1, h = -1, i = -1, s = -1, ms = -1, o, z, u, v;\n"
            + "var d = new Date();\n"
            + "y = d.getFullYear();\n"
            + "m = d.getMonth();\n"
            + "d = d.getDate();\n"
            + "var results = input.match(Date.parseRegexes[" + regexNum + "]);\n"
            + "if (results && results.length > 0) {";
    var regex = "";

    var special = false;
    var ch = '';
    for (var i = 0; i < format.length; ++i) {
        ch = format.charAt(i);
        if (!special && ch == "\\") {
            special = true;
        }
        else if (special) {
            special = false;
            regex += myEscape(ch);
        }
        else {
            var obj = Date.formatCodeToRegex(ch, currentGroup);
            currentGroup += obj.g;
            regex += obj.s;
            if (obj.g && obj.c) {
                code += obj.c;
            }
        }
    }

    code += "if (u)\n"
            + "{v = new Date(u * 1000);}" // give top priority to UNIX time
            + "else if (y >= 0 && m >= 0 && d > 0 && h >= 0 && i >= 0 && s >= 0 && ms >= 0)\n"
            + "{v = new Date(y, m, d, h, i, s, ms);}\n"
            + "else if (y >= 0 && m >= 0 && d > 0 && h >= 0 && i >= 0 && s >= 0)\n"
            + "{v = new Date(y, m, d, h, i, s);}\n"
            + "else if (y >= 0 && m >= 0 && d > 0 && h >= 0 && i >= 0)\n"
            + "{v = new Date(y, m, d, h, i);}\n"
            + "else if (y >= 0 && m >= 0 && d > 0 && h >= 0)\n"
            + "{v = new Date(y, m, d, h);}\n"
            + "else if (y >= 0 && m >= 0 && d > 0)\n"
            + "{v = new Date(y, m, d);}\n"
            + "else if (y >= 0 && m >= 0)\n"
            + "{v = new Date(y, m);}\n"
            + "else if (y >= 0)\n"
            + "{v = new Date(y);}\n"
            + "}return (v && (z || o))?\n" // favour UTC offset over GMT offset
            + "    (z ? v.add(Date.SECOND, (v.getTimezoneOffset() * 60) + (z*1)) :\n" // reset to UTC, then add offset
            + "        v.add(Date.HOUR, (v.getGMTOffset() / 100) + (o / -100))) : v\n" // reset to GMT, then add offset
            + ";}";

    Date.parseRegexes[regexNum] = new RegExp("^" + regex + "$", "i");
    eval(code);
};

// private
Date.formatCodeToRegex = function(character, currentGroup) {
    /*
     * currentGroup = position in regex result array
     * g = calculation group (0 or 1. only group 1 contributes to date calculations.)
     * c = calculation method (required for group 1. null for group 0.)
     * s = regex string
     */
    switch (character) {
        case "d":
            return {g:1,
                c:"d = parseInt(results[" + currentGroup + "], 10);\n",
                s:"(\\d{2})"}; // day of month with leading zeroes (01 - 31)
        case "D":
            for (var a = [], i = 0; i < 7; a.push(Date.getShortDayName(i)),++i); // get L10n short day names
            return {g:0,
                c:null,
                s:"(?:" + a.join("|") + ")"};
        case "j":
            return {g:1,
                c:"d = parseInt(results[" + currentGroup + "], 10);\n",
                s:"(\\d{1,2})"}; // day of month without leading zeroes (1 - 31)
        case "l":
            return {g:0,
                c:null,
                s:"(?:" + Date.dayNames.join("|") + ")"};
        case "N":
            return {g:0,
                c:null,
                s:"[1-7]"}; // ISO-8601 day number (1 (monday) - 7 (sunday))
        case "S":
            return {g:0,
                c:null,
                s:"(?:st|nd|rd|th)"};
        case "w":
            return {g:0,
                c:null,
                s:"[0-6]"}; // javascript day number (0 (sunday) - 6 (saturday))
        case "z":
            return {g:0,
                c:null,
                s:"(?:\\d{1,3}"}; // day of the year (0 - 364 (365 in leap years))
        case "W":
            return {g:0,
                c:null,
                s:"(?:\\d{2})"}; // ISO-8601 week number (with leading zero)
        case "F":
            return {g:1,
                c:"m = parseInt(Date.getMonthNumber(results[" + currentGroup + "]), 10);\n", // get L10n month number
                s:"(" + Date.monthNames.join("|") + ")"};
        case "m":
            return {g:1,
                c:"m = parseInt(results[" + currentGroup + "], 10) - 1;\n",
                s:"(\\d{2})"}; // month number with leading zeros (01 - 12)
        case "M":
            for (var a = [], i = 0; i < 12; a.push(Date.getShortMonthName(i)),++i); // get L10n short month names
            return {g:1,
                c:"m = parseInt(Date.getMonthNumber(results[" + currentGroup + "]), 10);\n", // get L10n month number
                s:"(" + a.join("|") + ")"};
        case "n":
            return {g:1,
                c:"m = parseInt(results[" + currentGroup + "], 10) - 1;\n",
                s:"(\\d{1,2})"}; // month number without leading zeros (1 - 12)
        case "t":
            return {g:0,
                c:null,
                s:"(?:\\d{2})"}; // no. of days in the month (28 - 31)
        case "L":
            return {g:0,
                c:null,
                s:"(?:1|0)"};
        case "o":
        case "Y":
            return {g:1,
                c:"y = parseInt(results[" + currentGroup + "], 10);\n",
                s:"(\\d{4})"}; // 4-digit year
        case "y":
            return {g:1,
                c:"var ty = parseInt(results[" + currentGroup + "], 10);\n"
                        + "y = ty > Date.y2kYear ? 1900 + ty : 2000 + ty;\n",
                s:"(\\d{1,2})"}; // 2-digit year
        case "a":
            return {g:1,
                c:"if (results[" + currentGroup + "] == 'am') {\n"
                        + "if (h == 12) { h = 0; }\n"
                        + "} else { if (h < 12) { h += 12; }}",
                s:"(am|pm)"};
        case "A":
            return {g:1,
                c:"if (results[" + currentGroup + "] == 'AM') {\n"
                        + "if (h == 12) { h = 0; }\n"
                        + "} else { if (h < 12) { h += 12; }}",
                s:"(AM|PM)"};
        case "g":
        case "G":
            return {g:1,
                c:"h = parseInt(results[" + currentGroup + "], 10);\n",
                s:"(\\d{1,2})"}; // 24-hr format of an hour without leading zeroes (0 - 23)
        case "h":
        case "H":
            return {g:1,
                c:"h = parseInt(results[" + currentGroup + "], 10);\n",
                s:"(\\d{2})"}; //  24-hr format of an hour with leading zeroes (00 - 23)
        case "i":
            return {g:1,
                c:"i = parseInt(results[" + currentGroup + "], 10);\n",
                s:"(\\d{2})"}; // minutes with leading zeros (00 - 59)
        case "s":
            return {g:1,
                c:"s = parseInt(results[" + currentGroup + "], 10);\n",
                s:"(\\d{2})"}; // seconds with leading zeros (00 - 59)
        case "u":
            return {g:1,
                c:"ms = parseInt(results[" + currentGroup + "], 10);\n",
                s:"(\\d{3})"}; // milliseconds with leading zeros (000 - 999)
        case "O":
            return {g:1,
                c:[
                    "o = results[", currentGroup, "];\n",
                    "var sn = o.substring(0,1);\n", // get + / - sign
                    "var hr = o.substring(1,3)*1 + Math.floor(o.substring(3,5) / 60);\n", // get hours (performs minutes-to-hour conversion also, just in case)
                    "var mn = o.substring(3,5) % 60;\n", // get minutes
                    "o = ((-12 <= (hr*60 + mn)/60) && ((hr*60 + mn)/60 <= 14))?\n", // -12hrs <= GMT offset <= 14hrs
                    "    (sn + myLeftPad(hr, 2, 0) + myLeftPad(mn, 2, 0)) : null;\n"
                ].join(""),
                s: "([+\-]\\d{4})"}; // GMT offset in hrs and mins
        case "P":
            return {g:1,
                c:[
                    "o = results[", currentGroup, "];\n",
                    "var sn = o.substring(0,1);\n", // get + / - sign
                    "var hr = o.substring(1,3)*1 + Math.floor(o.substring(4,6) / 60);\n", // get hours (performs minutes-to-hour conversion also, just in case)
                    "var mn = o.substring(4,6) % 60;\n", // get minutes
                    "o = ((-12 <= (hr*60 + mn)/60) && ((hr*60 + mn)/60 <= 14))?\n", // -12hrs <= GMT offset <= 14hrs
                    "    (sn + myLeftPad(hr, 2, 0) + myLeftPad(mn, 2, 0)) : null;\n"
                ].join(""),
                s: "([+\-]\\d{2}:\\d{2})"}; // GMT offset in hrs and mins (with colon separator)
        case "T":
            return {g:0,
                c:null,
                s:"[A-Z]{1,4}"}; // timezone abbrev. may be between 1 - 4 chars
        case "Z":
            return {g:1,
                c:"z = results[" + currentGroup + "] * 1;\n" // -43200 <= UTC offset <= 50400
                        + "z = (-43200 <= z && z <= 50400)? z : null;\n",
                s:"([+\-]?\\d{1,5})"}; // leading '+' sign is optional for UTC offset
        case "c":
            var df = Date.formatCodeToRegex, calc = [];
            var arr = [df("Y", 1), df("m", 2), df("d", 3), df("h", 4), df("i", 5), df("s", 6), df("P", 7)];
            for (var i = 0, l = arr.length; i < l; ++i) {
                calc.push(arr[i].c);
            }
            return {g:1,
                c:calc.join(""),
                s:arr[0].s + "-" + arr[1].s + "-" + arr[2].s + "T" + arr[3].s + ":" + arr[4].s + ":" + arr[5].s + arr[6].s};
        case "U":
            return {g:1,
                c:"u = parseInt(results[" + currentGroup + "], 10);\n",
                s:"(-?\\d+)"}; // leading minus sign indicates seconds before UNIX epoch
        default:
            return {g:0,
                c:null,
                s:myEscape(character)};
    }
};

Date.prototype.getTimezone = function() {
    return this.toString().replace(/^.* (?:\((.*)\)|([A-Z]{1,4})(?:[\-+][0-9]{4})?(?: -?\d+)?)$/, "$1$2").replace(/[^A-Z]/g, "");
};

/**
 * Get the offset from GMT of the current date (equivalent to the format specifier 'O').
 * @param {Boolean} colon true to separate the hours and minutes with a colon (defaults to false).
 * @return {String} The 4-character offset string prefixed with + or - (e.g. '-0600').
 */
Date.prototype.getGMTOffset = function(colon) {
    return (this.getTimezoneOffset() > 0 ? "-" : "+")
            + myLeftPad(Math.abs(Math.floor(this.getTimezoneOffset() / 60)), 2, "0")
            + (colon ? ":" : "")
            + myLeftPad(this.getTimezoneOffset() % 60, 2, "0");
};

/**
 * Get the numeric day number of the year, adjusted for leap year.
 * @return {Number} 0 to 364 (365 in leap years).
 */
Date.prototype.getDayOfYear = function() {
    var num = 0;
    Date.daysInMonth[1] = this.isLeapYear() ? 29 : 28;
    for (var i = 0; i < this.getMonth(); ++i) {
        num += Date.daysInMonth[i];
    }
    return num + this.getDate() - 1;
};

/**
 * Get the numeric ISO-8601 week number of the year.
 * (equivalent to the format specifier 'W', but without a leading zero).
 * @return {Number} 1 to 53
 */
Date.prototype.getWeekOfYear = function() {
    // adapted from http://www.merlyn.demon.co.uk/weekcalc.htm
    var ms1d = 864e5; // milliseconds in a day
    var ms7d = 7 * ms1d; // milliseconds in a week
    var DC3 = Date.UTC(this.getFullYear(), this.getMonth(), this.getDate() + 3) / ms1d; // an Absolute Day Number
    var AWN = Math.floor(DC3 / 7); // an Absolute Week Number
    var Wyr = new Date(AWN * ms7d).getUTCFullYear();
    return AWN - Math.floor(Date.UTC(Wyr, 0, 7) / ms7d) + 1;
};

/**
 * Whether or not the current date is in a leap year.
 * @return {Boolean} True if the current date is in a leap year, else false.
 */
Date.prototype.isLeapYear = function() {
    var year = this.getFullYear();
    return ((year & 3) == 0 && (year % 100 || (year % 400 == 0 && year)));
};

Date.prototype.getFirstDayOfMonth = function() {
    var day = (this.getDay() - (this.getDate() - 1)) % 7;
    return (day < 0) ? (day + 7) : day;
};


Date.prototype.getLastDayOfMonth = function() {
    var day = (this.getDay() + (Date.daysInMonth[this.getMonth()] - this.getDate())) % 7;
    return (day < 0) ? (day + 7) : day;
};


/**
 * Get the date of the first day of the month in which this date resides.
 * @return {Date}
 */
Date.prototype.getFirstDateOfMonth = function() {
    return new Date(this.getFullYear(), this.getMonth(), 1);
};

/**
 * Get the date of the last day of the month in which this date resides.
 * @return {Date}
 */
Date.prototype.getLastDateOfMonth = function() {
    return new Date(this.getFullYear(), this.getMonth(), this.getDaysInMonth());
};
/**
 * Get the number of days in the current month, adjusted for leap year.
 * @return {Number} The number of days in the month.
 */
Date.prototype.getDaysInMonth = function() {
    Date.daysInMonth[1] = this.isLeapYear() ? 29 : 28;
    return Date.daysInMonth[this.getMonth()];
};

/**
 * Get the English ordinal suffix of the current day (equivalent to the format specifier 'S').
 * @return {String} 'st, 'nd', 'rd' or 'th'.
 */
Date.prototype.getSuffix = function() {
    switch (this.getDate()) {
        case 1:
        case 21:
        case 31:
            return "st";
        case 2:
        case 22:
            return "nd";
        case 3:
        case 23:
            return "rd";
        default:
            return "th";
    }
};

// private
Date.daysInMonth = [31,28,31,30,31,30,31,31,30,31,30,31];

Date.monthNames =
["January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"];

Date.getShortMonthName = function(month) {
    return Date.monthNames[month].substring(0, 3);
}

Date.dayNames =
["Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday"];

Date.getShortDayName = function(day) {
    return Date.dayNames[day].substring(0, 3);
}

// private
Date.y2kYear = 50;

Date.monthNumbers = {
    Jan:0,
    Feb:1,
    Mar:2,
    Apr:3,
    May:4,
    Jun:5,
    Jul:6,
    Aug:7,
    Sep:8,
    Oct:9,
    Nov:10,
    Dec:11};

Date.getMonthNumber = function(name) {
    // handle camel casing for english month names (since the keys for the Date.monthNumbers hash are case sensitive)
    return Date.monthNumbers[name.substring(0, 1).toUpperCase() + name.substring(1, 3).toLowerCase()];
}


function myEscape(string) {
    return string.replace(/('|\\)/g, "\\$1");
}

function myLeftPad(val, size, ch) {
    var result = new String(val);
    if (ch === null || ch === undefined || ch === '') {
        ch = " ";
    }
    while (result.length < size) {
        result = ch + result;
    }
    return result;

}
function getPropElem(propName)
{
    var propElem = null;
    if ((document.getElementById("show_" + propName) && document.getElementById("show_" + propName).value) || (document.getElementsByName("show_" + propName).length > 0 && document.getElementsByName("show_" + propName)[0].value)) {
        propElem = document.getElementById("show_" + propName) || document.getElementsByName("show_" + propName)[0];
    } else {
        propElem = document.getElementById(propName) || document.getElementsByName(propName)[0];
    }
    return propElem;
}
