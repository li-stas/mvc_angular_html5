<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>
    <jsp:body>

        <!-- Page Content -->
        <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">HTML5
                    <small>html5</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a>
                    </li>
                    <li class="active">Примеры HTML5</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->
        <div>


            <h4>Текст внутри input (placeholder) </h4>
            <input type="text" name="username" placeholder="введите текст"/>
            <br/>
            <h4>Автофокус в текстовое поле</h4>
            <input type="text" name="autoFocusText" autofocus/>
            <br/>
            <h4>Валидация поля</h4>
            <form >
                <input type="text" name="validationText" placeholder="Не вводите текст и подтвердите форму"
                       required="required"/>
                <input type="submit" value="Submit form"/>
            </form>
            <br/>
            <h4>Email поле</h4>
            <form >
                <input type="email" name="emailText" placeholder="должен быть формат email"/>
                <input type="submit" value="Submit form"/>
            </form>
            <br/>
            <h4>pattern="[(][0-9]{3}[)][0-9]{7}"</h4>
            <form >
                <input name="phone" pattern="[(][0-9]{3}[)][0-9]{7}" title="(123)4567890" required="required"/>
                <input type="submit" value="Submit form"/>
            </form>
            <h4>pattern="[s][a-z]{4}[g]"</h4>
            <form >
                <input type="text" pattern="[s][a-z]{4}[g]" title="[s][a-z]{4}[g]" required="required">
                <input type="submit" value="Submit form"/>
            </form>
            <br/>
            <h4>URL поле pattern="https?://.+"</h4>
            <form >
                <input name="url" pattern="https?://.+" title="Тип - URL" required="required"/>
                <input type="submit" value="Submit form"/>
            </form>
            <br/>
            <h4>Поле с телефоном pattern="[0-9]{10}"</h4>
            <form >
                <input type="tel" pattern="[0-9]{10}" name="tel" title="Номер телефона" required="required"/>
                <input type="submit" value="Submit form"/>
            </form>
            <br/>
            <h4>Часы</h4>
                <input type="time" />
            <br/>
            <h4>Счетчик</h4>
                <input type="number" required="required"/>
            <br/>
            <h4>Проверка на min\max</h4>
            <form >
                <input type="number" min="0" max="100" required placeholder="цифры от 0 до 100" title="цифры от 0 до 100"/>
                <input type="submit" value="Submit form"/>
            </form>
            <br/>
            <h4>Слайдер (1-50)</h4>
                <input type="range" min="1" max="50" value="25">
            <br/>
            <h4>Календарь</h4>
                <input type="date">
            <br/>
            <h4>Цвета</h4>
                <input type="color"/>
            <br/>
            <h4>Список</h4>
            <input name="values" type="text" list="suggestions"></label>
            <datalist id="suggestions">
                <option value="Зн.1" label="Значение 1">
                <option value="Зн.2" label="Значение 2">
                <option value="Зн.3" label="Значение 3">
            </datalist>
            <br/>
            <h4>Редактируемое поле</h4>
            <div id="editHere" contenteditable="true">Попробуйте отредактировать этот текст</div>
            <br/>
            <h4>Прогрес выполнения (выставлен 25%)</h4>
                <progress value="25" max="100"></progress>
            <br/>
            <h4>Аудио</h4>
            <audio controls>
                <source src="http://developer.mozilla.org/@api/deki/files/2926/=AudioTest_(1).ogg">
            </audio>
            <h4>Видео (не добавлено в архив) </h4>
            <video width="150" height="150" controls>
                <source type="video/youtube" src="" />
            </video>
            <br/>
        </div>
        <!-- /.container -->

    </jsp:body>
</page:template>

