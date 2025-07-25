<!DOCTYPE html>
<html lang="nl">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>VIS Trainingsdashboard</title>
  <li><a href="index.html">Website</a></li>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: #f7f7f7;
      margin: 0;
      padding: 0;
    }
    header {
      background: #cc0000;
      color: white;
      padding: 16px 24px;
    }
    .container {
      max-width: 900px;
      margin: 30px auto;
      background: white;
      padding: 24px;
      border-radius: 16px;
      box-shadow: 0 2px 10px rgba(0,0,0,0.1);
    }
    h1, h2 {
      color: #cc0000;
    }
    .progress-group {
      margin-bottom: 30px;
    }
    label {
      font-weight: bold;
      display: block;
      margin-bottom: 6px;
    }
    input[type="range"] {
      width: 100%;
    }
    .progress-bar {
      background: #ddd;
      border-radius: 10px;
      height: 20px;
      overflow: hidden;
      margin-top: 6px;
    }
    .progress-fill {
      height: 100%;
      background: #cc0000;
      width: 0%;
      transition: width 0.3s ease;
    }
    .video {
      margin-bottom: 30px;
    }
    iframe {
      width: 100%;
      height: 200px;
      border: none;
      border-radius: 10px;
    }
  </style>
</head>
<body>

  <header>
    <h1>Trainingsdashboard – VoetbalAcademieVis</h1>
  </header>

  <div class="container">

    <h2>Voortgang per onderdeel</h2>

    <div class="progress-group">
      <label>Dribbelen</label>
      <input type="range" min="0" max="100" value="50" oninput="updateBar('dribbelBar', this.value)">
      <div class="progress-bar"><div id="dribbelBar" class="progress-fill" style="width: 50%;"></div></div>
    </div>

    <div class="progress-group">
      <label>1v1 Aanvallen</label>
      <input type="range" min="0" max="100" value="60" oninput="updateBar('duelBar', this.value)">
      <div class="progress-bar"><div id="duelBar" class="progress-fill" style="width: 60%;"></div></div>
    </div>

    <div class="progress-group">
      <label>Afwerken</label>
      <input type="range" min="0" max="100" value="30" oninput="updateBar('shootBar', this.value)">
      <div class="progress-bar"><div id="shootBar" class="progress-fill" style="width: 30%;"></div></div>
    </div>

    <h2>Oefeningen & Video's</h2>

    <div class="video">
      <p>Oefening 1 – Richtingsverandering + versnellen</p>
      <iframe src="https://www.youtube.com/embed/ZsX2HcA0UpQ" allowfullscreen></iframe>
    </div>

    <div class="video">
      <p>Oefening 2 – 1v1 met dribbel en afwerking</p>
      <iframe src="https://www.youtube.com/embed/dQw4w9WgXcQ" allowfullscreen></iframe>
    </div>

  </div>

  <script>
    function updateBar(id, value) {
      document.getElementById(id).style.width = value + "%";
    }
  </script>

</body>
</html>
