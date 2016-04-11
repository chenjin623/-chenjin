<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
	<meta name="version" content="1.0.0">
	<meta name="author" content="smohan,http://www.smohan.net/">
   
    <link rel="stylesheet" href="musicDemo11111/src/css/smusic.css"/>
    <title>HTML5音乐播放器SMusic</title>
</head>
<body>

<div class="grid-music-container f-usn">
    <div class="m-music-play-wrap">
        <div class="u-cover"></div>
        <div class="m-now-info">
            <h1 class="u-music-title"><strong>标题</strong><small>歌手</small></h1>
            <div class="m-now-controls">
                <div class="u-control u-process">
                    <span class="buffer-process"></span>
                    <span class="current-process"></span>
                </div>
                <div class="u-control u-time">00:00/00:00</div>
                <div class="u-control u-volume">
                    <div class="volume-process" data-volume="0.50">
                        <span class="volume-current"></span>
                        <span class="volume-bar"></span>
                        <span class="volume-event"></span>
                    </div>
                    <a class="volume-control"></a>
                </div>
            </div>
            <div class="m-play-controls">
                <a class="u-play-btn prev" title="上一曲"></a>
                <a class="u-play-btn ctrl-play play" title="暂停"></a>
                <a class="u-play-btn next" title="下一曲"></a>
                <a class="u-play-btn mode mode-list current" title="列表循环"></a>
                <a class="u-play-btn mode mode-random" title="随机播放"></a>
                <a class="u-play-btn mode mode-single" title="单曲循环"></a>
            </div>
        </div>
    </div>
    <div class="f-cb">&nbsp;</div>
    <div class="m-music-list-wrap"></div>
    <div class="m-music-lyric-wrap">
        <div class="inner">
            <ul class="js-music-lyric-content">
                <li class="eof">暂无歌词...</li>
            </ul>
        </div>
    </div>
</div>

<script>
var musicList = [
                     {
        title : "<s:property value="#attr.mu.musicName" escape="false"/>",
        singer : "<s:property value="#attr.mu.cd.singer.artist" escape="false"/>",
        cover  : "musicDemo11111/src/data/rYcmv.jpg",
        src    : "musicDemo11111/src/data/<s:property value="#attr.mu.song" escape="false"/>",
		lyric  : "musicDemo11111/src/data/<s:property value="#attr.mu.lyric" escape="false"/>"
    },
    {
        title : '车站',
        singer : '李健',
        cover  : "musicDemo11111/src/data/1DYuS4.jpg",
        src    : "musicDemo11111/src/data/1VvcW3.mp3",
		lyric  : "musicDemo11111/src/data/chezhan.lrc"
    },
    {
        title : '年轮 ',
        singer : '张碧晨',
        cover  : "musicDemo11111/src/data/1EyrQ3.jpg",
        src    : "musicDemo11111/src/data/HpaN71.mp3",
		lyric  : "musicDemo11111/src/data/nianlun.lrc"
    },
    {
        title : '她说',
        singer : '张碧晨',
        cover  : "musicDemo11111/src/data/zUlA31.jpg",
        src    : "musicDemo11111/src/data/1O1TO4.mp3",
		lyric  : null
    },
    {
        title : '赤血长殷',
        singer : '王凯',
        cover  : "musicDemo11111/src/data/eukCI.jpg",
        src    : "musicDemo11111/src/data/14hk24.mp3",
		lyric  : null
    },
    {
        title : 'My Love',
        singer : 'WestLife',
        cover  : "musicDemo11111/src/data/NYBS32.jpg",
        src    : "musicDemo11111/src/data/1IdhM4.mp3",
		lyric  : null
    }
             ];
</script>

<script src="musicDemo11111/src/js/smusic.js"></script>
<script>
    new SMusic({
        musicList : musicList,
        autoPlay  : true,  //是否自动播放
        defaultMode : 1,   //默认播放模式，随机
        callback   : function (obj) {  //返回当前播放歌曲信息
            console.log(obj);
            /*{title: "赤血长殷", singer: "王凯", cover: "http://data.smohan.net/upload/other/cxcy/cover.jpg", src: "http://data.smohan.net/upload/other/cxcy/music.mp3", index: 4}*/
        }
    });
</script>
<div style="display: none;"><script src="http://s23.cnzz.com/z_stat.php?id=1000291789&web_id=1000291789" language="JavaScript"></script></div>
</body>
</html>
