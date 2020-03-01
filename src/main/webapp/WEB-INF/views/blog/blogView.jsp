<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<fmt:requestEncoding value="utf-8"/>

<jsp:include page="/WEB-INF/views/common/header.jsp" />


      	
        <div class="blog-details-area pt-70 pb-80">
      
            <div class="container">
                <div class="row">
                    <div class="col-xl-9 col-lg-8">
                        <div class="blog-details-wrap">
                         
                            <div class="b-details-content-wrap">
                   
                          
                                <div class="blog-content-3 text-center">
                                
                                    <h4>${blog.blogTitle}</h4>
                              
                                    <div class="blog-meta-3">
                                    
                                        <ul>
                                            <li>Photography</li>
                                            <li>By  ${blog.memberNo }</li>
                                            <li>${blog.blogDate }</li>
                                            <li><a href="#">${blog.blogNo }</a></li>
                                        </ul>
                                    </div>
                                   
                                </div>
                                
                                <div class="blog-img hover-3 mt-40 mb-30">
                                    <img src="assets/img/blog/blog-details1.jpg" alt="">
                                </div>
                                <p> ${blog.blogContent } </p>
                               
                                
                                     <div class="b-middle-img mt-5">
                                       
                                             <c:if test="${blog.attachmentList[0].renamedFileName == null }">
                                         		 <img src="${pageContext.request.contextPath }/resources/upload/${blog.attachmentList[0].renamedFileName}" alt="">
                                          	</c:if> 
                                          	 <c:if test="${blog.attachmentList[0].renamedFileName != null }">
		                                            <img src="${pageContext.request.contextPath }/resources/upload/blog/${blog.attachmentList[0].renamedFileName}" alt="">
	                                         </c:if> 
	                               
                                        </div>
                                <div class="b-details-content-middle mt-40">
                                    <h4>Phasellus accumsan et tempus neque quam eu felis.</h4>
                                    <p>In pulvinar nulla quis rhoncus scelerisque. Phasellus facilisis scelerisque ultrices. Nulla dignissim ante ut risus vestibul lacinia ultricies sem sagittis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras consequat felis nonit facilisis pharetra. Nunc molestie quis dolor vitae sagittis. Sed tempor, est a tempor congue, leo erat pellentesque neque, ac efficitur et ante.</p>

                                    <p>hasellus accumsan, leo a vehicula ornare, lectus eros tristique aleo, eto tempus neque quam pulvinar nulla quis rhoncus scelerisque. Phasellus facilisis scelerisque ultrices. Nulla dignissim ante ut rtheisus vestibulum, lacinia ultricies sem sagittis ante ipsum primis. </p>
                                    <div class="blog-details-list">
                                        <ul>
                                            <li>Curabitur consequat est et auctor pretium. Fusce tincidunt ornare nunc, at maximus mauris. </li>
                                            <li>Cras euismod sit amet nunc eget scelerisque. Cras id mollis justo, fringilla vestibulum mauris. </li>
                                            <li>In malesuada metus sit amet lorem rhoncus, et facilisis ex consequa imus arcu ultricies quis. </li>
                                        </ul>
                                    </div>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec tempor, mi id condimentum ultrices, ante quam ultricies exat molestie neque eros a mauris. Nullam ut massa lorem. Praesent dapibus bibendum lacus, ultricies imperdiet eros rutrum ive odio. Vestibulum rhoncus tellus quis convallis imperdiet. Etiam blandit, tortor sit amet euismod ultricies, leo sapien fermentum ndrerit lacus mi a lacus. </p>
                                    <p>Maecenas faucibus vitae urna eget auctor. Nullam tincidunt nulla ex, faucibus vestibulum leo bibeet. Fusce rhoncus suscipit ante sed tincidunt. Vivamus ultricies purus aliquam pretium sodales. Cras nec tristique ipsum, et eleme lacus arcu, hendrerit vitae tellus porta.</p>
                                    <p>Asuscipit tristique libero. Sed tristique sit amet metus eget laoreet. Suspendisse vel od dolor venenatis sodales utligula. Etiam tempor urna vitae ornare mattis, erat velit pretium dolor, at tempus augue leo et massa. Sed quis dolorelis tincidunt faucibus. Cras id rutrum ex. Vestibulum blandit, ex quis viverra porta, tortor sem cursus ipsum, feugiat iaculis neque lorem at leo. Fusce luctus, augue asapien. </p>
                                </div>
                                <div class="details-category-social">
                                    <div class="details-category">
                                        <ul>
                                            <li><a href="#">#blog</a></li>
                                            <li><a href="#">#Photography</a></li>
                                            <li><a href="#">#Culture</a></li>
                                        </ul>
                                    </div>
                                    <!-- <div class="details-social">
                                        <ul>
                                            <li><a href="#"><i class="ti-facebook"></i></a></li>
                                            <li><a href="#"><i class="ti-twitter-alt"></i></a></li>
                                            <li><a href="#"><i class="ti-pinterest"></i></a></li>
                                            <li><a href="#"><i class="ti-tumblr-alt"></i></a></li>
                                            <li><a href="#"><i class="ti-google"></i></a></li>
                                        </ul>
                                    </div> -->
                                			</div>
                                				
                                       	</div>
                                       
                                     </div>
                                    
                                 </div>
                             </div>
                        </div>
                    </div>
                               <!--  <div class="b-details-author mt-45 mb-50 pt-55 pb-60 border-bottom-4 border-top-5">
                                    <div class="b-details-author-img">
                                        <img alt="" src="assets/img/blog/blog-author-2.png">
                                    </div>
                                    <div class="b-details-content">
                                        <h5>Dean Fleming</h5>
                                        <p>Vestibulum ante ipsum primis aucibus orci luctustrices posuere cubilia Curae Suspendisse viverra viverra. Mauris ullam corper euismod vehicula. Phasellus quam nisi, congue id nulla nec, convallis convallis leo. </p>
                                    </div>
                                </div> -->
                                <%-- <div class="related-blog-area border-bottom-4 pb-35 mb-50">
                                    <h4 class="blog-details-title text-center">Recommended</h4>
                                    <div class="row">
                                        <div class="col-lg-4 col-md-4 col-12">
                                            <div class="related-blog-wrap mb-30">
                                                <a href="#"><img alt="" src="assets/img/blog/related-blog-1.jpg"></a>
                                                <div class="related-blog-content">
                                                    <h4><a href="#">Karla Welch Launches Her Levi’s Collaboration </a></h4>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-4 col-12">
                                            <div class="related-blog-wrap mb-30">
                                                <a href="#"><img alt="" src="assets/img/blog/related-blog-2.jpg"></a>
                                                <div class="related-blog-content">
                                                    <h4><a href="#">Sienna Miller Has the New Uniform Cool Moms </a></h4>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-4 col-12">
                                            <div class="related-blog-wrap mb-30">
                                                <a href="#"><img alt="" src="assets/img/blog/${item_image_orgin_name} "></a>
                                                <div class="related-blog-content">
                                                    <h4><a href="#">How Nancy Cunard Bangle Inspired  Bronze  </a></h4>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div> --%>
                          <!--       <div class="blog-comments-area border-bottom-4 pb-60">
                                    <h4 class="blog-details-title text-center">Comments</h4>
                                    <div class="blog-comments-wrap">
                                        <div class="single-blog-bundel">
                                            <div class="single-blog-comment mb-60">
                                                <div class="blog-comment-img">
                                                    <img alt="" src="assets/img/blog/blog-comment1.png">
                                                </div>
                                                <div class="blog-comment-content">
                                                    <div class="comment-name-reply">
                                                        <span>White Lewis</span>
                                                        <a href="#">Reply</a>
                                                    </div>
                                                    <p>Vestibulum ante ipsum primis aucibus orci luctustrices posuere cubilia Curae Suspendisse viverra ed viverra. Mauris ullarper euismod vehicula. Phasellus quam nisi, congue id nulla nec, convallis convallis leo. Maecenas bibendum bibendum larius.</p>
                                                </div>
                                            </div>
                                            <div class="single-blog-comment child-blog-comment mb-60 ml-70">
                                                <div class="blog-comment-img">
                                                    <img alt="" src="assets/img/blog/blog-comment2.png">
                                                </div>
                                                <div class="blog-comment-content">
                                                    <div class="comment-name-reply">
                                                        <span>White Lewis</span>
                                                        <a href="#">Reply</a>
                                                    </div>
                                                    <p>Vestibulum ante ipsum primis aucibus orci luctustrices posuere cubilia Curae Suspendisse viverra ed viverra. Mauris ullarper euismod vehicula. Phasellus quam nisi, congue id nulla nec, convallis convallis leo. Maecenas bibendum bibendum larius.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="single-blog-bundel">
                                            <div class="single-blog-comment mb-60">
                                                <div class="blog-comment-img">
                                                    <img alt="" src="assets/img/blog/blog-comment3.png">
                                                </div>
                                                <div class="blog-comment-content">
                                                    <div class="comment-name-reply">
                                                        <span>White Lewis</span>
                                                        <a href="#">Reply</a>
                                                    </div>
                                                    <p>Vestibulum ante ipsum primis aucibus orci luctustrices posuere cubilia Curae Suspendisse viverra ed viverra. Mauris ullarper euismod vehicula. Phasellus quam nisi, congue id nulla nec, convallis convallis leo. Maecenas bibendum bibendum larius.</p>
                                                </div>
                                            </div>
                                            <div class="single-blog-comment child-blog-comment ml-70">
                                                <div class="blog-comment-img">
                                                    <img alt="" src="assets/img/blog/blog-comment4.png">
                                                </div>
                                                <div class="blog-comment-content">
                                                    <div class="comment-name-reply">
                                                        <span>White Lewis</span>
                                                        <a href="#">Reply</a>
                                                    </div>
                                                    <p>Vestibulum ante ipsum primis aucibus orci luctustrices posuere cubilia Curae Suspendisse viverra ed viverra. 
Mauris ullarper euismod vehicula. Phasellus quam nisi, congue id nulla nec, convallis convallis leo. </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div> -->
                              <!--   <div class="blog-reply-area pt-45">
                                    <h4 class="blog-details-title">Leave A Reply</h4>
                                    <div class="blog-form-wrapper custom-col-15">
                                        <form action="#">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="leave-form">
                                                        <input type="text" placeholder="Name">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="leave-form">
                                                        <input type="text" placeholder="Email">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="leave-form">
                                                        <input type="email" placeholder="Website">
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="text-leave">
                                                        <textarea placeholder="Add a Comment"></textarea>
                                                        <input type="submit" value="Post Comment">
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div> -->
                
                   <!--  <div class="col-xl-3 col-lg-4"> -->
                   <!--      <div class="pro-sidebar-style pl-20 sidebar-mrg"> -->
                     <!--        <div class="pro-sidebar-search mb-55"> -->
                           <!--      <form class="pro-sidebar-search-form" action="#"> -->
                         <!--            <input type="text" placeholder="Search here...">
                                    <button>
                                        <i class="ti-search"></i>
                                    </button>
                                </form>
                            </div> -->
                         <!--    <div class="sidebar-widget mb-55"> -->
                              <!--   <h4 class="pro-sidebar-title">Recent Projects </h4> -->
                      <!--           <div class="sidebar-project-wrap mt-30">
                                    <div class="single-sidebar-project">
                                        <div class="sidebar-project-img">
                                            <a href="#"><img src="assets/img/portfolio/sidebar-1.jpg" alt=""></a>
                                        </div>
                                        <div class="sidebar-project-content">
                                            <span>Photography</span>
                                            <h4><a href="#">The Planetary Fund</a></h4>
                                        </div>
                                    </div>
                                    <div class="single-sidebar-project">
                                        <div class="sidebar-project-img">
                                            <a href="#"><img src="assets/img/portfolio/sidebar-2.jpg" alt=""></a>
                                        </div>
                                        <div class="sidebar-project-content">
                                            <span>Branding</span>
                                            <h4><a href="#">Let's Change the World</a></h4>
                                        </div>
                                    </div>
                                    <div class="single-sidebar-project">
                                        <div class="sidebar-project-img">
                                            <a href="#"><img src="assets/img/portfolio/sidebar-3.jpg" alt=""></a>
                                        </div>
                                        <div class="sidebar-project-content">
                                            <span>Design</span>
                                            <h4><a href="#">Space Tesla Design</a></h4>
                                        </div>
                                    </div>
                                </div> -->
                           <!--  </div> -->
                    <!--         <div class="sidebar-widget"> -->
                         <!--        <div class="subscribe-style-3">
                                    <h4>Get updates on my blog</h4>
                                    <div id="mc_embed_signup" class="subscribe-form-3">
                                        <form id="mc-embedded-subscribe-form" class="validate" novalidate="" target="_blank" name="mc-embedded-subscribe-form" method="post" action="http://devitems.us11.list-manage.com/subscribe/post?u=6bbb9b6f5827bd842d9640c82&id=05d85f18ef">
                                            <div id="mc_embed_signup_scroll" class="mc-form">
                                                <input class="email" type="email" required="" placeholder="Enter email" name="EMAIL" value="">
                                                <div class="mc-news" aria-hidden="true">
                                                    <input type="text" value="" tabindex="-1" name="b_6bbb9b6f5827bd842d9640c82_05d85f18ef">
                                                </div>
                                                <div class="clear">
                                                    <input id="mc-embedded-subscribe" class="button" type="submit" name="subscribe" value="Subscribe">
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div> -->
                      <!--       </div> -->
                             <div class="sidebar-widget mt-50">
                                <h4 class="pro-sidebar-title">Categories </h4>
                                <div class="sidebar-categori mt-25">
                                    <ul>
                                        <li><a href="#">Artwork  <span>(9)</span></a></li>
                                        <li><a href="#">Branding  <span>(12)</span></a></li>
                                        <li><a href="#">Graphics  <span>(5)</span></a></li>
                                        <li><a href="#">Photography  <span>(16)</span></a></li>
                                    </ul>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />
