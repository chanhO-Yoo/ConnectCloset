<<<<<<< HEAD

=======
>>>>>>> refs/heads/master
package com.connectcloset.cc.common.util;

public class Utils {

	/**
	 * 페이징바 html 코드를 문자열로 리턴하는 메서드
	 * 
	 * 
	 * 
	 */
	public static String getPageBar(int totalContents, int cPage, int numPerPage, String url) {
		String pageBar = "";
		//페이지바 길이
		final int pageBarSize= 5;
		//총페이지
		int totalPage = (int)Math.ceil((double)totalContents/numPerPage);
		
		int pageStart = ((cPage-1)/pageBarSize) * pageBarSize + 1;
		int pageEnd = pageStart + pageBarSize -1;
		//페이지바 순회용 증감변수
		int pageNo =pageStart;
		
		pageBar += "<ul class=\"pagination justify-content-center\">";
		
		//[이전]
		if(pageNo == 1) {
			pageBar += "<li class=\"page-item disabled\">" + 
					"      <a class=\"page-link\" href=\"#\" tabindex=\"-1\" aria-disabled=\"true\">이전</a>" + 
					"    </li>";
		}
		else {
			pageBar += "<li class=\"page-item\">"
					+ "<a class=\"page-link\" href=\""+url+"?cPage="+(pageNo-1)+"\">이전</a>"
					+ "</li>";
		}
		
		//[pageNo]
		while(!(pageNo>pageEnd || pageNo>totalPage)) {
			if(pageNo == cPage) {
				pageBar += "<li class=\"page-item\">"
						+ "<a class=\"page-link\">"+pageNo+"</a>"
						+ "</li>";
			}
			else {
				pageBar += "<li class=\"page-item\">"
						+ "<a class=\"page-link\" href=\""+url+"?cPage="+(pageNo)+"\">"+pageNo+"</a>"
						+ "</li>";
			}
			pageNo++;
		}
		
		
		//[다음]
		if(pageNo > totalPage) {
			pageBar += "<li class=\"page-item disabled\">" + 
					"      <a class=\"page-link\" href=\"#\" tabindex=\"-1\" aria-disabled=\"true\">다음</a>" + 
					"    </li>";
		}
		else {
			pageBar += "<li class=\"page-item\">"
					+ "<a class=\"page-link\" href=\""+url+"?cPage="+(pageNo)+"\">다음</a>"
					+ "</li>";
		}
		
		pageBar += "</ul>";
		
		return pageBar;
	}
	
	//브랜드를 위한 페이지바
		public static String getBrandPageBar(int totalContents, int cPage, int numPerPage, String url) {
			String pageBar = "";
			//페이지바 길이
			final int pageBarSize= 5;
			//총페이지
			int totalPage = (int)Math.ceil((double)totalContents/numPerPage);
			int pageStart = ((cPage-1)/pageBarSize) * pageBarSize + 1;
			int pageEnd = pageStart + pageBarSize -1;
			//페이지바 순회용 증감변수
			int pageNo = pageStart;
			pageBar += "<ul class=\"pagination justify-content-center\">";
			//[이전]
			if(pageNo == 1) {
				pageBar += "<li class=\"page-item disabled\">" +
						"      <a class=\"page-link\" href=\"#\" tabindex=\"-1\" aria-disabled=\"true\">이전</a>" +
						"    </li>";
			}
			else {
				pageBar += "<li class=\"page-item\">"
						+ "<a class=\"page-link\" href=\""+url+"&cPage="+(pageNo-1)+"\">이전</a>"
						+ "</li>";
			}
			//[pageNo]
			while(!(pageNo>pageEnd || pageNo>totalPage)) {
				if(pageNo == cPage) {
					pageBar += "<li class=\"page-item\">"
							+ "<a class=\"page-link\">"+pageNo+"</a>"
							+ "</li>";
				}
				else {
					pageBar += "<li class=\"page-item\">"
							+ "<a class=\"page-link\" href=\""+url+"&cPage="+(pageNo)+"\">"+pageNo+"</a>"
							+ "</li>";
				}
				pageNo++;
			}
			//[다음]
			if(pageNo > totalPage) {
				pageBar += "<li class=\"page-item disabled\">" +
						"      <a class=\"page-link\" href=\"#\" tabindex=\"-1\" aria-disabled=\"true\">다음</a>" +
						"    </li>";
			}
			else {
				pageBar += "<li class=\"page-item\">"
						+ "<a class=\"page-link\" href=\""+url+"&cPage="+(pageNo)+"\">다음</a>"
						+ "</li>";
			}
			pageBar += "</ul>";
			return pageBar;
		}
}

