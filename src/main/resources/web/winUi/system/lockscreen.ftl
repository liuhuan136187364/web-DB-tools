﻿<script>
    layui.link(winui.path + 'css/lockscreen.css');
</script>
<div class="lock-body">
    <div id="login_div" class="animated fadeIn layui-hide">
        <img src="/images/os_windows.png" />
        <p id="user_name">${dbUser.account}</p>
        <form class="layui-form">
            <div class="winui-from-group">
                <input type="password" name="password" value="" placeholder="输入密码解锁屏幕" height="36" />
                <button lay-submit lay-filter="unlock"><i class="fa fa-arrow-right"></i></button>
            </div>
        </form>
    </div>
    <div id="date_time" class="animated fadeIn"></div>
</div>
<script type="text/javascript">
    var Week = ['日', '一', '二', '三', '四', '五', '六'];
    var dateTime = new Date();
    document.getElementById('date_time').innerHTML = '<p id="time">' + (dateTime.getHours() > 9 ? dateTime.getHours().toString() : '0' + dateTime.getHours()) + ':' + (dateTime.getMinutes() > 9 ? dateTime.getMinutes().toString() : '0' + dateTime.getMinutes()) + '</p><p id="date">' + (dateTime.getMonth() + 1) + '月' + dateTime.getDate() + '日,星期' + Week[dateTime.getDay()] + '</p>';
</script>