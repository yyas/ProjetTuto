const express = require("express");
const mysql = require("mysql");
const cors = require("cors");
const multer = require("multer");
const app = express();
const upload = multer({ dest: "uploads/" }); // Configure multer as needed
const bodyParser = require("body-parser");
require("dotenv").config();

app.use(bodyParser.json());
app.use(express.json());
app.use(cors());

// MySQL database connection
// MySQL database connection
const db = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
});

db.connect((err) => {
  if (err) throw err;
  console.log("Connected to the MySQL server.");
});

// Login endpoint
app.post("/api/login", (req, res) => {
  const { email, password } = req.body;
  if (!email || !password) {
    return res.status(400).send("Email and password are required");
  }

  // Check if user exists
  db.query("SELECT * FROM users WHERE email = ?", [email], (err, results) => {
    if (err) {
      console.error("Error checking user:", err);
      return res.status(500).send("Internal Server Error");
    }

    if (results.length && password === results[0].password) {
      // User authenticated
      return res.json({ authenticated: true, role: results[0].role });
    } else {
      // User not authenticated
      return res.status(401).send("Incorrect email or password");
    }
  });
});
// Endpoint pour soumettre le formulaire d'observation
app.post("/api/submit-form", upload.single("piece_a_joindre"), (req, res) => {
  const {
    sujet,
    dateDebut,
    dateFin,
    entreprise,
    encadrant,
    binome,
    nom,
    prenom,
  } = req.body;
  const piece_a_joindre = req.file ? req.file.path : "";

  const data = {
    sujet,
    date_debut: dateDebut,
    date_fin: dateFin,
    entreprise,
    encadrent: encadrant, // Fix the typo here
    binome,
    piece_a_joindre,
    nom,
    prenom,
  };

  db.query("INSERT INTO observation SET ?", data, (error, result, fields) => {
    if (error) {
      console.error("Error saving observation data:", error);
      return res
        .status(500)
        .send(`Error saving observation data: ${error.message}`);
    }
    res.status(200).send("observation data saved successfully");
  });
});

// Endpoint pour soumettre le formulaire PFA
app.post("/api/submit-pfa", upload.single("piece_a_joindre"), (req, res) => {
  const {
    sujet,
    nom,
    prenom,
    dateDebut,
    dateFin,
    entreprise,
    encadrant,
    binome,
  } = req.body;
  const piece_a_joindre = req.file ? req.file.path : "";

  const data = {
    sujet,
    nom,
    prenom,
    date_debut: dateDebut,
    date_fin: dateFin,
    entreprise,
    encadrent: encadrant,
    binome,
    piece_a_joindre,
  };

  db.query("INSERT INTO pfa SET ?", data, (error, result, fields) => {
    if (error) {
      console.error("Error saving PFA data:", error);
      return res.status(500).send(`Error saving PFA data: ${error.message}`);
    }
    res.status(200).send("PFA data saved successfully");
  });
});

// Endpoint pour soumettre le formulaire PFE
app.post("/api/submit-pfe", upload.single("piece_a_joindre"), (req, res) => {
  const {
    encadrent_universitaire_id,
    nom,
    prenom,
    sujet,
    dateDebut,
    dateFin,
    encadrent_de_stage,
    binome,
    entreprise,
  } = req.body;

  const piece_a_joindre = req.file ? req.file.path : "";

  const data = {
    encadrent_universitaire_id,
    nom,
    prenom,
    sujet,
    date_debut: dateDebut,
    date_fin: dateFin,
    encadrent_de_stage,
    binome,
    piece_a_joindre,
    entreprise,
  };

  db.query("INSERT INTO pfe SET ?", data, (error, result, fields) => {
    if (error) {
      console.error("Error saving PFE data:", error);
      return res.status(500).send(`Error saving PFE data: ${error.message}`);
    }
    res.status(200).send("PFE data saved successfully");
  });
});

// Define endpoints for fetching data
app.get("/api/get-observation", (req, res) => {
  db.query("SELECT * FROM observation", (error, results, fields) => {
    if (error) {
      return res
        .status(500)
        .send("Error fetching observation data: " + error.message);
    }
    return res.status(200).json(results);
  });
});

app.get("/api/get-pfa", (req, res) => {
  db.query("SELECT * FROM pfa", (error, results, fields) => {
    if (error) {
      return res.status(500).send("Error fetching pfa data: " + error.message);
    }
    return res.status(200).json(results);
  });
});

app.get("/api/get-pfe", (req, res) => {
  db.query("SELECT * FROM pfe", (error, results, fields) => {
    if (error) {
      return res.status(500).send("Error fetching pfe data: " + error.message);
    }
    return res.status(200).json(results);
  });
});

const PORT = process.env.PORT;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
