<!DOCTYPE html>
<html lang="en">
  <head>
    <%@ page contentType="text/html; charset=UTF-8" %>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
  </head>
  <body style="text-align: center">
    <h1 style="text-align: center">Number Guessing Game</h1>
    <p style="text-align: center">Choose a number between 1 - 1000</p>
    <div style="margin-bottom: 30px"><input type="number" id="so" /></div>
    <span id="alert" style="color: red"></span>
    <div style="margin-top: 40px">
      <button class="btn_play-again">Play Again</button>
      <button class="btn_doan-so">Guess</button>
    </div>
    <script>
      var input = document.querySelector("#so");
      var btn_doanso = document.querySelector(".btn_doan-so");
      var numberFromBot = Math.floor(Math.random() * 1000);
      console.log(numberFromBot);
      var alertText = document.querySelector("#alert");
      var btn_playAgain = document.querySelector(".btn_play-again");
      btn_doanso.onclick = () => {
        if (input.value > numberFromBot) {
          alertText.textContent = "Số vừa đoán lớn hơn đáp án";
        }
        if (input.value < numberFromBot) {
          alertText.textContent = "Số vừa đoán nhỏ hơn đáp án";
        }
        if (input.value == numberFromBot) {
          alert("Đoán đúng rồi chúC mừng bạn - tiếp tục chơi bạn nhé");
        }
      };
      btn_playAgain.onclick = () => {
        numberFromBot = Math.floor(Math.random() * 1000);
        input.value = ""
        console.log(numberFromBot);
        alertText.textContent = "đã bắt đầu chơi lại";
      };
    </script>
  </body>
</html>
