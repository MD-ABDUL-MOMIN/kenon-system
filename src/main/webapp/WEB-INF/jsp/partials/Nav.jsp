
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<nav style="background-color: #edebe6" class="m-3 h4 ">

        <div class="d-inline-block p-3 font-weight-bold">
            <a href="/user">
                <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-brush" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M15.825.12a.5.5 0 0 1 .132.584c-1.53 3.43-4.743 8.17-7.095 10.64a6.067 6.067 0 0 1-2.373 1.534c-.018.227-.06.538-.16.868-.201.659-.667 1.479-1.708 1.74a8.117 8.117 0 0 1-3.078.132 3.658 3.658 0 0 1-.563-.135 1.382 1.382 0 0 1-.465-.247.714.714 0 0 1-.204-.288.622.622 0 0 1 .004-.443c.095-.245.316-.38.461-.452.393-.197.625-.453.867-.826.094-.144.184-.297.287-.472l.117-.198c.151-.255.326-.54.546-.848.528-.739 1.2-.925 1.746-.896.126.007.243.025.348.048.062-.172.142-.38.238-.608.261-.619.658-1.419 1.187-2.069 2.175-2.67 6.18-6.206 9.117-8.104a.5.5 0 0 1 .596.04zM4.705 11.912a1.23 1.23 0 0 0-.419-.1c-.247-.013-.574.05-.88.479a11.01 11.01 0 0 0-.5.777l-.104.177c-.107.181-.213.362-.32.528-.206.317-.438.61-.76.861a7.127 7.127 0 0 0 2.657-.12c.559-.139.843-.569.993-1.06a3.121 3.121 0 0 0 .126-.75l-.793-.792zm1.44.026c.12-.04.277-.1.458-.183a5.068 5.068 0 0 0 1.535-1.1c1.9-1.996 4.412-5.57 6.052-8.631-2.591 1.927-5.566 4.66-7.302 6.792-.442.543-.796 1.243-1.042 1.826a11.507 11.507 0 0 0-.276.721l.575.575zm-4.973 3.04l.007-.005a.031.031 0 0 1-.007.004zm3.582-3.043l.002.001h-.002z"/>
                </svg>
                <span class="d-none d-sm-inline"> Kenon</span></a>
        </div>
    <%

       if(session.getAttribute("user")!=null){
           if(session.getAttribute("user").equals("admin")){
    %>



    <div class="d-inline-block p-3">

        <div class="dropdown">
            <button style="background-color: transparent"
                    class="btn  dropdown-toggle" id="dropdownMenu1"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                メニュー <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                <li><a href="/admin">体調の入力</a></li>
                <li><a href="/admin/user-import-export">ユーザの取り込み</a></li>
                <li><a href="#">一覧の出力</a></li>
            </ul>
        </div>
    </div>

    <%
            }  }
    %>

    <div class="d-inline-block p-3 float-right">
        <a href="/logout">ログアウト</a>
    </div>
    <div class="d-inline-block p-3 float-right">
        <%

            if(session.getAttribute("user")!=null){
                if(session.getAttribute("user").equals("admin")){
        %>
        <a href="/admin/update-password">パスワード変更</a>
        <% } else { %>
        <a href="/user/update-password">パスワード変更</a>
        <% }} %>
    </div>



</nav>
