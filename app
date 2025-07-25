<!DOCTYPE html>
<html lang="nl">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Spelersdashboard - Liam</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: #000;
      color: #fff;
      padding: 20px;
    }
    h1 {
      color: #e60000;
    }
    .container {
      max-width: 600px;
      margin: auto;
      background: #111;
      padding: 20px;
      border-radius: 12px;
    }
    label {
      display: block;
      margin-top: 10px;
    }
    input, textarea {
      width: 100%;
      padding: 8px;
      border: none;
      margin-top: 5px;
      border-radius: 8px;
    }
    button {
      margin-top: 20px;
      padding: 10px;
      background: #e60000;
      border: none;
      color: white;
      font-weight: bold;
      border-radius: 10px;
      cursor: pointer;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Dashboard Liam</h1>
    <form name="trainingsformulier" id="formulier" onsubmit="handleSubmit(event)">
      <label>Trainingsdoel</label>
      <textarea name="doel" required></textarea>

      <label>Voortgang (%)</label>
      <input type="number" name="voortgang" min="0" max="100" required />

      <button type="submit">Opslaan</button>
    </form>
    <p id="status"></p>
  </div>

  <script>
    const scriptURL = 'https://script.google.com/macros/s/___HIER_JE_WEBAPP_URL___/exec';

    function handleSubmit(e) {
      e.preventDefault();
      const form = document.forms['trainingsformulier'];
      document.getElementById('status').innerText = 'Opslaan...';

      fetch(scriptURL, { method: 'POST', body: new FormData(form) })
        .then(() => {
          document.getElementById('status').innerText = 'Opgeslagen!';
          form.reset();
        })
        .catch(error => {
          console.error('Fout bij opslaan', error);
          document.getElementById('status').innerText = 'Fout bij opslaan';
        });
    }
  </script>
</body>
</html>
