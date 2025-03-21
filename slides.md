# Test

<form action="https://formspree.io/f/mqappbgq" method="POST">
  <input type="email" name="email" placeholder="Your email" required><br><br>

  <div class="h-captcha" data-sitekey="ES_332bd83c2b374cbc84910fd92e0a9093"></div><br>

  <button type="submit">Sign Up</button>
</form>
<script>
  document.addEventListener("submit", function (e) {
    const captchaResponse = document.querySelector("[name='h-captcha-response']");
    if (!captchaResponse || captchaResponse.value === "") {
      e.preventDefault();
      alert("Please complete the CAPTCHA.");
    }
  });
</script>
