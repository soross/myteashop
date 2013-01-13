package com.crm.cache;
import java.io.Serializable;
import java.util.List;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheException;
import net.sf.ehcache.Element;

import org.springframework.beans.factory.InitializingBean;
import org.springframework.dao.DataRetrievalFailureException;
import org.springframework.util.Assert;

public class CacheUtil implements InitializingBean {
	// ~ Static fields/initializers
	// =====================================================================================

	// ~ Instance fields
	// ================================================================================================

	private Cache cache;

	// ~ Methods
	// ========================================================================================================

	public void afterPropertiesSet() throws Exception {
		Assert.notNull(cache, "cache mandatory");
	}

	public Cache getCache() {
		return cache;
	}

	public List getCacheKeyList() {
		if (cache == null)
			return null;
		try {
			return cache.getKeys();
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (CacheException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public Object getObjectFromCache(String id) {
		Element element = null;

		try {
			element = cache.get(id);
		} catch (CacheException cacheException) {
			throw new DataRetrievalFailureException("Cache failure: "
					+ cacheException.getMessage());
		}

		// if (logger.isDebugEnabled()) {
		// logger.debug("Cache hit: " + (element != null) + "; id: " + id);
		// }

		if (element == null) {
			return null;
		} else {
			return element.getValue();
		}
	}

	public void putObjectInCache(String id, Object obj) {
		Element element = new Element(id, (Serializable) obj);

		// if (logger.isDebugEnabled()) {
		// logger.debug("Cache put: " + element.getKey());
		// }

		cache.put(element);
	}

	public void removeUserFromCache(String id) {
		cache.remove(id);
	}

	public void setCache(Cache cache) {
		this.cache = cache;
	}
}
