package Utils;

import java.util.Date;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DateConverter;
import org.apache.commons.beanutils.converters.DateTimeConverter;

public class Xbean {
	public static <T>T readBean(Class<T> beanclass, javax.servlet.http.HttpServletRequest req){
		 try {
				DateTimeConverter converter = new DateConverter(new Date());
				converter.setPatterns(new String[]{"dd-MM-yyyy","MM/dd/yyyy","yyyy-MM-dd"});
				ConvertUtils.register(converter, Date.class);
				T bean = beanclass.getDeclaredConstructor().newInstance();
				BeanUtils.populate(bean, req.getParameterMap());
				return bean;
			} catch (Exception e) {
				throw new RuntimeException(e);
			}
	}
	
   public static String getPathInfo(String input) {
       String parts = input.substring(1);
       return parts;
   }


}
