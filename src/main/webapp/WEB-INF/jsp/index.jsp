<%--
  Created by IntelliJ IDEA.
  User: mervek
  Date: 30.05.2018
  Time: 01:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>bayilik form</title>
    <style>
        *{
            box-sizing: border-box;
        }
        h3 {
            font-family: Georgia;
            text-align: center;
        }
        input[type=text], textarea,[type=date] {
            outline:black;
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            resize: vertical;
        }
        select {
            outline:none;
            width: 33%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            resize: vertical;
        }
        label {
            padding: 12px 12px 12px 0;
            display: inline-block;
        }
        button,[type=submit]{
            outline:none;
            float:right;
            width: 50%;
            background-color: black;
            color: white;
            padding: 14px 20px;
            margin: 10px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: gray;
        }
        .container {
            margin-top: 100px;
            margin-bottom: 100px;
            margin-right: 150px;
            margin-left: 80px;
            border-radius: 10px;
            background-color: #f2f2f2;
            padding: 100px;
        }
        .col-25 {
            float: left;
            width: 25%;
            margin-top: 6px;
        }
        .col-75 {
            float: left;
            width: 75%;
            margin-top: 6px;
        }
        /* Clear floats after the columns */
        .row:after {
            content: "";
            display: table;
            clear: both;
        }
        /* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
        @media screen and (max-width: 600px) {
            .col-25, .col-75, input[type=submit] {
                width: 100%;
                margin-top: 0;
            }
        }
    </style>
</head>
<body>



<div class="container">
    <h3>BAYILIK ON BASVURU FORMU</h3>
    <form method="post" modelAttribute="FormEntity" action="/process">
        <div class="row">
            <div class="col-25">
                <label path="name" for="lname">ISIM SOYISIM:</label>
            </div>
            <div class="col-75">
                <input path="name" type="text" id="lname" name="name" required/>
            </div>
        </div>
        <div class="row">
            <div class="col-25">
                <label path="tc" for="ltc">TC KIMLIK: </label>
            </div>
            <div class="col-75">
                <input path="tc" type="text" pattern="\d{9}" title="Bu input’a sadece 9 karakterli sayısal değer girilebilir" id="ltc" name="tc"  required/>
            </div>
        </div>

        <div class="row">
            <div class="col-25">
                <label path="tel" for="ltel">TELEFON: </label>
            </div>
            <div class="col-75">
                <input path="tel" type="text" pattern="\d{9}" id="ltel" name="tel" placeholder="or:055555555" title="Bu input’a sadece 9 karakterli sayısal değer girilebilir" required/>
            </div>
        </div>
        <div class="row">
            <div class="col-25">
                <label path="adres" for="ladres">ADRES:  </label>
            </div>
            <div class="col-75">
                <input path="adres" type="text" id="ladres" name="adres" required/>
            </div>
        </div>
        <div class="row">
            <div class="col-25">
                <label path="email" for="lemail">E- POSTA: </label>
            </div>
            <div class="col-75">
                <input path="email" type="text" id="lemail" name="email" required/>
            </div>
        </div>
        <div class="row">
            <div class="col-25">
                <label path="dt" for="ldt">DOGUM TARIHI: </label>
            </div>
            <div class="col-75">
                <input path="dt" type="date" id="ldt" name="dt" required />
            </div>
        </div>
        <div class="row">
            <div class="col-25">
                <label path="lperakende" for="lperakende">PERAKENDE TICARETI ILE UGRASTINIZ MI? </label>
            </div>
            <div class="col-75">
                <input path="lperakende" type="checkbox" id="lperakende" name="lperakende" value="1" checked> Evet
                <input path="lperakende" type="checkbox"  name="lperakende" value="0"/> Hayir
            </div>
        </div>
        <div class="row">
            <div class="col-25">
                <label path="tercih" for="ltercih">LOKUMCU BABA'YI TERCIH ETMENIZIN SEBEBI NEDIR?</label>
            </div>
            <div class="col-75">
                <select path="tercih" id="ltercih" name="tercih">
                    <option >tercih1</option>
                    <option >tercih2</option>
                    <option >tercih3</option>
                </select>
            </div>
        </div>

        <div class="row">
            <div class="col-25">
                <label path="il" for="lil">HANGI IL/ILCE/SEMT ICIN LOKUMCU BABA ISLETMECILIGI DUSUNUYORSUNUZ? </label>
            </div>
            <div class="col-75">
                <select path="il"  id="lil" name="il" required >
                    <option >il1</option>
                    <option >il2</option>
                    <option >il3</option>
                </select>
                <select path="ilce" id="lilce"  >
                    <option >ilce
                    <option >il1</option>
                    <option >il2</option>
                    <option >il3</option>
                </select>
                <select path="semt" id="lsemt" >
                    <option >semt
                    <option >il1</option>
                    <option>il2</option>
                    <option >il3</option>
                </select>
            </div>
        </div>

        <div class="row">
            <div class="col-25">
                <label path="miktar" for="lmiktar">YATIRIM MIKTARINIZ NEDIR?  </label>
            </div>
            <div class="col-75">
                <input path="miktar" type="text" pattern="\d*" id="lmiktar" name="miktar" required/>
            </div>
        </div>

        <div class="row">
            <div class="col-25">
                <label path="ek" for="lek">EKLEMEK ISTEDIKLERINIZ: </label>
            </div>
            <div class="col-75">
                <textarea path="ek" id="lek" name="ek" placeholder="Ek.." style="height:100px" required></textarea>
            </div>
        </div>
        <div class="row">
            <button type="submit" value="Kaydet"/>
        </div>
    </form>
</div>


</body>
</html>
