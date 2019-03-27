

<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta charset="utf-8">
    <title>优卡音乐11111111</title>
    <meta name="keywords" content="优卡音乐" />
    <meta name="description" content="person music" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" type="text/css" href="css/player.css"/>
    <link rel="Shortcut Icon" href="images/favicon.ico" />
    <script type="text/javascript" src="js/modernizr.js"></script>
    <script>
        $(function () {

        })
        if ((!to3d()) || document.documentMode == 10 || document.documentMode == 11){
            window.location="error/error.html";
        }

    </script>
</head>
<body>



<!--头部 开始-->
<div id="header">
    <!--顶部bar 开始-->

    <div id="headCont">
        <audio id="audioPlayer"></audio>
        <!--二级导航-->
        <nav class="sub_nav">
            <div class="nav_list">
                <ul>
                    <li>
                        <a href="login.jsp" class="smallogo">
                            <span class="mini_logo" ><img src="" title="登录"></span>
                        </a>
                    </li>
                    <li><a href="" class="home"></a></li>

                    <div class="sub_list" id="sub_list">
                        <p class="active">
                            <a href="">那音乐萦绕在我的脑海里.</a>
                        </p>
                    </div>
                </ul>
            </div>
        </nav>
    </div>
    <!--头部导航  结束-->
</div>

<!-- 音乐馆 模块 开始  default-->
<section class="section_cont">
    <!--轮播图 开始 -->
    <div class="main_banner">
        <div class="main_banner_bg"></div>
        <div class="main_banner_wrap">
            <div class="main_banner_box" id="m_box">
                <a href="javascript:void(0)" class="banner_btn js_pre">
                    <span class="banner_btn_arrow"><i></i></span>
                </a>
                <a href="javascript:void(0)" class="banner_btn btn_next js_next">
                    <span class="banner_btn_arrow"><i></i></span>
                </a>
                <ul>
                    <li id="imgCard0">
                        <a href=""><span style="opacity:0;"></span></a>
                        <img src="main_banner/2ad7c5e1ff2e0064a6e785a73c9b7364.png" alt="">
                        <p style="bottom:0">对不起，你一直在等我，但是我却现在才来.</p>
                    </li>
                    <li id="imgCard1">
                        <a href=""><span style="opacity:0.4;"></span></a>
                        <img src="main_banner/eebf049cd4bd31196478bdee66acdcdd.png" alt="">
                        <p>樱花满地集于我心 楪舞纷飞祈愿相随.</p>
                    </li>
                    <li id="imgCard2">
                        <a href=""><span style="opacity:0.4;" ></span></a>
                        <img src="main_banner/161a3567e85b53621a1074fcb64d62bb.png" alt="">
                        <p>无意义的理想,迟早会在现实面前崩溃.</p>
                    </li>
                    <li id="imgCard3">
                        <a href=""><span style="opacity:0.4;"></span></a>
                        <img src="main_banner/873b57828b3a0a67-2a532e4245c541ae-71f399aeb90edf9940ed27bd2accbccb.png" alt="">
                        <p>什么都无法舍弃的人，什么也改变不了.</p>
                    </li>
                    <li id="imgCard4">
                        <a href=""><span style="opacity:0.4;"></span></a>
                        <img src="main_banner/6c4c5d3e62274e1fa1a314aa8bede506.png" alt="">
                        <p>再见了！只要是活着的东西，就算是神都杀给你看……无垢识 开境！死亡啊，别站在我面前!</p>
                    </li>
                </ul>
                <!--火狐倒影图层-->
                <p id="rflt"></p>
                <!--火狐倒影图层-->
            </div>
            <!--序列号按钮-->
            <div class="btn_list">
                <span class="cur"></span><span></span><span></span><span></span><span></span>
            </div>
        </div>
    </div>
    <!--轮播图 结束 -->

<%--魔术盒--%>
    <div class="new_mv new_common">

        <div class="new_mv_title new_common_title index_mv_title">
            <span>魔术盒</span>
            <a href="?cat=6" class="more"></a>
            <ul>
                <li><a class="cur" href="javascript:;">梦</a></li>
                <li><a href="javascript:;">精神</a></li>
                <li><a href="javascript:;">魔法</a></li>
            </ul>
        </div>

        <div  class="new_mv_body index_mv_body">

            <div class="mvList" id="mv_rank_list" style="display:block;">
                <ul  class="sb" id="main">a
                    <li>
                        <a href="javascript:;" class="playIcon" >
                            <img width="220px" height="265px" src="http://p1.music.126.net/DpmzdxcucvbDztcuaBbWiQ==/18734578627337366.jpg" class="attachment-220x125 wp-post-image" alt="mv_1x2_10" />

                            <span>
                                 <font>在你耳边说 &#8211; 周兴哲</font>
                                 <font><i></i></font>

                            </span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="265px" src="http://p1.music.126.net/wME0oX7VY7fEkKvbXgzlrA==/19122706230471650.jpg" class="attachment-220x125 wp-post-image" alt="" />

                            <span>
                                <font>God of ink &#8211;  SawanoHiroyuki</font>
                                <font><i></i></font>

                            </span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="265px" src="http://p1.music.126.net/OX-yCGzOUHbhqiKK9Xx4Vg==/4442026976217692.jpg" class="attachment-220x125 wp-post-image" alt="" />

                            <span>
                                <font>white silence(album version) &#8211; TK from 凛として時雨</font>
                                <font><i></i></font>

                            </span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="265px" src="http://p1.music.126.net/dlC4rAiDvq_uUi2fpnxKMA==/109951162819138078.jpg" class="attachment-220x125 wp-post-image" alt="" />

                            <span>
                                <font>结び -饭碗的彼岸</font>
                                <font><i></i></font>
                            </span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="265px" src="http://p1.music.126.net/WStPGvMUlDC89Wus9813zA==/109951163014870789.jpg" class="attachment-220x125 wp-post-image" alt="" />

                            <span>
                                <font>VV - ALK &#8211; SawanoHiroyuki[nZk]</font>
                                <font><i></i></font>
                            </span>
                        </a>
                    </li>

                </ul>
            </div>
            <!--2spirit-->
            <div class="mvList">
                <ul id="spirit">
                    <li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="265px" src="http://p1.music.126.net/lW4YKD6cMgm32nI66CzWVg==/5702067301704441.jpg" class="attachment-220x125 wp-post-image" alt="" />

                            <span>
                                <font>M19+20 &#8211; 梶浦由記</font>
                                <font><i></i></font>

                            </span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="265px" src="http://p1.music.126.net/tFTRt1H87rReNTyO1K9IDQ==/18498183627713149.jpg" class="attachment-220x125 wp-post-image" alt="" />

                            <span>
                                <font>Sis puella magica! &#8211; 梶浦由記</font>
                                <font><i></i></font>

                            </span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="265px" src="http://p1.music.126.net/7xaV2qB-T1d9m8b1XZC6tQ==/725677674344222.jpg" class="attachment-220x125 wp-post-image" alt="" />

                            <span>
                                <font>月は优しく (月) &#8211; 梶浦由記</font>
                                <font><i></i></font>

                            </span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="265px" src="http://p1.music.126.net/Iqckrd2sOB1ztqrSOw4XzA==/109951162841140691.jpg" class="attachment-220x125 wp-post-image" alt="" />

                            <span>
                                <font>Euterpe エウテルペ  &#8211; 染音若蔡</font>
                                <font><i></i></font>

                            </span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="265px" src="http://p1.music.126.net/4xHOkSVWH-n6p5pB3Jf0yQ==/109951162922204274.jpg" class="attachment-220x125 wp-post-image" alt="" />

                            <span>
                                <font>幻光&#8211; 杨秉音</font>
                                <font><i></i></font>

                            </span>
                        </a>
                    </li>
                </ul>
            </div>
            <!--3magic-->
            <div class="mvList">
                <ul id="magic">
                    <li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="265px" src="http://p1.music.126.net/r4TK33y6f8cwlntVidXZbQ==/931286348726555.jpg" class="attachment-220x125 wp-post-image" alt="" />

                            <span>
                                <font>群雄疾走 &#8211; 川井憲次</font>
                                <font><i></i></font>

                            </span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="265px" src="http://p1.music.126.net/ivONokvElv9ZCzyrZp84FQ==/3297435373557125.jpg" class="attachment-220x125 wp-post-image" alt="" />

                            <span>
                                <font>Ghost of a smile &#8211; EGOIST</font>
                                <font><i></i></font>

                            </span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="265px" src="http://p1.music.126.net/Q4Dg5QXwft213TBKMv26_A==/3276544653004159.jpg" class="attachment-220x125 wp-post-image" alt="" />

                            <span>
                                <font>樱子小姐的脚下埋着尸体 &#8211; 大竹佑季</font>
                                <font><i></i></font>

                            </span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="265px" src="http://p1.music.126.net/84dpde0vkfsDAVsNNjulXg==/7906588115750467.jpg" class="attachment-220x125 wp-post-image" alt="" />

                            <span>
                                <font>非科学的表裏一体 &#8211; 豚乙女</font>
                                <font><i></i></font>

                            </span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="265" src="http://p1.music.126.net/b04i7LFbHLJkmkzwhwRLMA==/2343059278838229.jpg" class="attachment-220x125 wp-post-image" alt="" />
                            <strong>FELT</strong>
                            <span>
                                <font>You're the Shine &#8211; FELT</font>
                                <font><i></i></font>

                            </span>
                        </a>
                    </li>

                </ul>
            </div>
        </div>
    </div>
<%--分类--%>
    <div class="songs_rcmd_title">
        <div class="rcmd_left_title rcmd_title">
            <span>古风</span>
            <a href="" class="more">/更多</a>
        </div>
        <div class="rcmd_center_title rcmd_title">
            <span>怀旧</span>
            <a href="" class="more">/更多</a>
        </div>
        <div class="rcmd_right_title rcmd_title">
            <span>流行</span>
            <a href="" class="more">/更多</a>
        </div>
    </div>

    <div class="songs_rcmd" id="songs_rcmd">
        <div class="songs_rcmd_cont">

            <ul class="rcmd_left rcmd_cont" id="latest">
                <c:forEach items="${list}" var="gufeng">
                <li>
                    <a href="javascript:;" class="musicName">${gufeng.musicname}</a>
                    <a class="shareIcon" href="javascript:;"></a>
                    <a class="playIcon" href="javascript:;"></a>
                </li>
                </c:forEach>
            </ul>
            <ul class="rcmd_center rcmd_cont" id="popular">
                <c:forEach items="${lists}" var="huaijiu">
                    <li>
                        <a href="javascript:;" class="musicName">${huaijiu.musicname}</a>
                        <a class="shareIcon" href="javascript:;"></a>
                        <a class="playIcon" href="javascript:;"></a>
                    </li>
                </c:forEach>
            </ul>
            <ul class="rcmd_right rcmd_cont" id="rank">
                <c:forEach items="${listl}" var="liuxing">
                    <li>
                        <a href="javascript:;" class="musicName">${liuxing.musicname}</a>
                        <a class="shareIcon" href="javascript:;"></a>
                        <a class="playIcon" href="javascript:;"></a>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>
<%--幻想的世界--%>
    <div class="omnibus hot_singer">
        <div class="omnibus_cont new_common">
            <div class="omnibus_title new_common_title">
                <span>幻想的世界</span>
                <a href="" class="more"></a>
            </div>
            <ul id="omnibus_list">
                <li class="post_big">
                    <a href= "javascript:;">
                        <img src="images/ksoa.png" alt="" width="305" height="290">
                        <i></i>
                    </a>
                    <a href="javascript:;">The divine comedy as first love</a>
                </li>
                <li class="post_small">
                    <a href="">
                        <img src="images/dollars.jpg" alt="" width="130" height="130">
                        <span></span>
                    </a>
                    <a href="javascript:;">A new world</a>
                </li>
                <li class="post_small">
                    <a href="">
                        <img src='images/fasd.png' alt="" width="130" height="130">
                        <span></span>
                    </a>
                    <a href="">This is our dream</a>
                </li>
                <li class="post_small">
                    <a href="">
                        <img src="images/ariko.png" alt="" width="130" height="130">
                        <span></span>
                    </a>
                    <a href="">what feels most natural</a>
                </li>
                <li class="post_small">
                    <a href="">
                        <img src='images/msoal.png' alt="" width="130" height="130">
                        <span></span>
                    </a>
                    <a href="">I can appreciate that</a>
                </li>
                <li class="post_small">
                    <a href="">
                        <img src='images/lise.png' alt="" width="130" height="130">
                        <span></span>
                    </a>
                    <a href="">Tell myths about love</a>
                </li>
                <li class="post_small">
                    <a href="">
                        <img src="images/jisad.png" alt="" width="130" height="130">
                        <span></span>
                    </a>
                    <a href="">In a different world</a>
                </li>
            </ul>
        </div>
        <div class="hot_singer_cont new_common">
            <div class="hot_singer_title new_common_title">
                <span>艺术家灵魂</span>
                <a href="" class="more"></a>
            </div>
            <ul class="singer_list">
                <li>
                    <a href="" class="singerPhoto">
                        <img src=" images/18808245906449965.jpg" alt="" width="70" height="70"></a>
                    <a href="" class="singer">梶浦由记</a>
                </li>
                <li>
                    <a href="" class="singerPhoto">
                        <img src="images/18619129906152259.jpg" alt="" width="70" height="70"></a>
                    <a href="" class="singer">花たん</a>
                </li>
                <li>
                    <a href="" class="singerPhoto">
                        <img src=" images/19127104277052748.jpg" alt="" width="70" height="70"></a>
                    <a href="?p=363" class="singer">泽野弘之</a>
                </li>
                <li>
                    <a href="" class="singerPhoto">
                        <img src=" images/19124905253592749.jpg" alt="" width="70" height="70"></a>
                    <a href="" class="singer">Sound Horizon</a>
                </li>
                <li>
                    <a href="" class="singerPhoto">
                        <img src='images/109951163112362346.jpg' alt="" width="70" height="70"></a>
                    <a href="" class="singer">Aimer</a>
                </li>
                <li>
                    <a href="" class="singerPhoto">
                        <img src=" images/3283141725800255.jpg" alt="" width="70" height="70"></a>
                    <a href="" class="singer">れをる</a>
                </li>
                <div style="clear:both;"></div>
            </ul>
        </div>
        <div style="clear:both"></div></div>
</section>





<!-- 左侧播放器 开始-->
<div id="jp_container_N" class="jp-video jp-video-270p" role="application" aria-label="media player">
    <div class="jp-type-playlist">
        <div id="jquery_jplayer_N"class="jp-jplayer"></div>
        <div class="jp-gui">
            <div class="jp-video-play">
                <button class="jp-video-play-icon" role="button" tabindex="0">播放</button>
            </div>
            <div class="jp-interface">
                <div class="jp-progress">
                    <div class="jp-seek-bar">
                        <div class="jp-play-bar"></div>
                    </div>
                </div>
                <div class="jp-current-time" role="timer" aria-label="time"></div>
                <div class="jp-duration" role="timer" aria-label="duration"></div>
                <div class="jp-controls-holder">
                    <div class="jp-controls">
                        <button class="jp-previous" role="button" tabindex="0">上一曲</button>
                        <button class="jp-play" role="button" tabindex="0">播放</button>
                        <button class="jp-next" role="button" tabindex="0">下一曲</button>
                        <button class="jp-stop" role="button" tabindex="0">暂停</button>
                    </div>
                    <div class="jp-volume-controls">
                        <button class="jp-mute" role="button" tabindex="0">静音</button>
                        <button class="jp-volume-max" role="button" tabindex="0">最大音量</button>
                        <div class="jp-volume-bar">
                            <div class="jp-volume-bar-value"></div>
                        </div>
                    </div>
                    <div class="jp-toggles">
                        <button class="jp-repeat" role="button" tabindex="0">重复</button>
                        <button class="jp-shuffle" role="button" tabindex="0">随机</button>
                        <!--<button class="jp-full-screen" role="button" tabindex="0">全屏</button>-->
                    </div>
                </div>
                <div class="jp-details">
                    <div class="jp-title" aria-label="title"></div>
                </div>
            </div>
        </div>
        <div class="jp-playlist">
            <div class="jp-playlist-box">
                <ul>
                    <!-- 该方法使用无序列表displayplaylist()播放列表 -->
                    <li></li>
                </ul>
            </div>
        </div>
        <div class="jp-no-solution">
            <span>升级需要</span>
            您浏览器赞不支持播放，请更新版本
            <a href="http://get.adobe.com/flashplayer/" target="_blank">Flash插件</a>.
        </div>
    </div>
    <!--歌曲列表滚动条-->
    <div class="scrollBar">
        <div class="bar"></div>
    </div>
    <!--播放器展开隐藏按钮-->
    <button type="button" class="folded_bt" title="点击收缩" id="btnfold">
        <span></span>
    </button>
    <div id="listRemove"></div><!--移除全部歌曲按钮-->
    <div id="listClose"></div><!--歌曲列表展开收缩按钮-->
</div>
<!-- 左侧播放器 结束-->

<!--底部 开始 -->
<div class="footer" id="footer">
    <div class="footer_cont">
        <div class="footer_cont_left">
            <p>
                <a href="">About me</a>|<a href="">History</a>|<a href="">Cartoon</a>|
                <a href="">Ad service</a>|<a href="">Movie link</a>|<a href="">Help</a>
            </p>
            <p>
                Copyright © Youka  All Rights Reserved
            </p>
        </div>
        <div class="footer_cont_right">
            <span>Other Links</span>
            <ul>
                <li><a href=""><span></span></a></li>
                <li><a href=""><span></span></a></li>
                <li>
                    <a href="" class="twoCode">
                        <span></span>
                        <img class="tCode" src=" images/1517791716.png" width="100" height="100" alt="二维码" />
                    </a>
                </li>
                <li><a href=""><span></span></a></li>
                <li><a href=""><span></span></a></li>
            </ul>
        </div>
        <div id="toTop"></div>
    </div>

</div>
<!--底部 结束 -->
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/index.js"></script>
&lt;!&ndash;播放器js&ndash;&gt;
<script type="text/javascript" src="js/player.js"></script>
<script type="text/javascript" src="js/playlist.js"></script>
<script type="text/javascript" src="js/player_database.js"></script>
<!--播放器js-->
<!-- 底部模板调用 结束 -->
</body>
</html>

