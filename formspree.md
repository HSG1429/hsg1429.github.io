---
layout: page
title: Formspree test
description: Test fuer Formspree
permalink: /formspree/
type: info
header_text: formspree
---
<html>
  <body>
    <form method="POST" action="https://formspree.io/phsg@online.de">
      <div class="field">
        <label for="name">Name</label>
        <input type="text" name="name" id="name" />
      </div>
      <div class="field">
        <label for="email">Email</label>
        <input type="text" name="email" id="email" />
      </div>
      <div class="field">
        <label for="message">Nachricht</label>
        <textarea name="message" id="message" rows="3"></textarea>
      </div>
      <ul class="actions">
        <li><input type="submit" value="Sende Nachricht" /></li>
        <li><a href="/datenschutz#kontaktformular" target="_blank">Datenschutzhinweis</a></li>
      </ul>
    </form>
  </body>
</html>
