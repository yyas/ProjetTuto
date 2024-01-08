<template>
  <div>
    <header>
      <div class="container">
        <img src="../../assets/logo.jpeg" alt="Avatar" class="avatar" width="100" />
        <div class="welcome-message">
          <h1>Bienvenue sur notre plateforme, Enseignant !</h1>
        </div>
        <input
          v-model="searchTerm"
          type="text"
          placeholder="Rechercher..."
          class="search-bar"
        />
        <p>PFEs disponibles:</p>
        <table>
          <thead>
            <tr>
              <th>ID</th>
              <th>Encadrent Universitaire ID</th>
              <th>Nom</th>
              <th>Prénom</th>
              <th>Sujet</th>
              <th>Date de début</th>
              <th>Date de fin</th>
              <th>Encadrent de stage</th>
              <th>Binome</th>
              <th>Pièce à joindre</th>
              <th>Entreprise</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="pfe in filteredPfes" :key="pfe.id">
              <td>{{ pfe.id }}</td>
              <td>{{ pfe.encadrent_universitaire_id }}</td>
              <td>{{ pfe.nom }}</td>
              <td>{{ pfe.prenom }}</td>
              <td>{{ pfe.sujet }}</td>
              <td>{{ pfe.date_debut }}</td>
              <td>{{ pfe.date_fin }}</td>
              <td>{{ pfe.encadrent_de_stage }}</td>
              <td v-if="pfe.binome">{{ pfe.binome }}</td>
              <td v-else></td>
              <td>{{ pfe.piece_a_joindre }}</td>
              <td>{{ pfe.entreprise }}</td>
            </tr>
          </tbody>
        </table>
      </div>
    </header>
  </div>
</template>

<script>
export default {
  name: "Teacher",
  data() {
    return {
      pfe: [],
      searchTerm: "", // Ajoutez une nouvelle propriété de données pour le terme de recherche
    };
  },
  computed: {
    // PFEs filtrés en fonction du terme de recherche
    filteredPfes() {
      return this.pfe.filter((pfe) => this.matchesSearchTerm(pfe));
    },
  },
  created() {
    // Fetch PFEs when the component is created
    this.fetchPfes();
  },
  methods: {
    fetchPfes() {
      // Appeler votre point d'API pour récupérer les PFEs
      // Vous voudrez peut-être utiliser une bibliothèque comme axios pour effectuer des requêtes HTTP
      // Exemple d'utilisation de fetch :
      fetch("http://localhost:3000/api/get-pfe")
        .then((response) => response.json())
        .then((data) => {
          this.pfe = data;
        })
        .catch((error) => {
          console.error("Error fetching PFEs:", error);
        });
    },
    matchesSearchTerm(pfe) {
      // Fonction pour vérifier si un PFE correspond au terme de recherche
      const lowerCaseSearch = this.searchTerm.toLowerCase();
      return (
        pfe.sujet.toLowerCase().includes(lowerCaseSearch) ||
        pfe.nom.toLowerCase().includes(lowerCaseSearch) ||
        pfe.prenom.toLowerCase().includes(lowerCaseSearch) ||
        pfe.entreprise.toLowerCase().includes(lowerCaseSearch)
     
        // Ajoutez plus de conditions au besoin pour d'autres champs
      );
    },
  },
};
</script>

<style scoped>
/* Vos styles existants peuvent être conservés ou modifiés selon les besoins */
header {
  font-family: Arial, sans-serif;
}

.container {
  width: 80%;
  margin: 0 auto;
  padding: 20px;
  text-align: center;
}

.welcome-message {
  background-color: #b0d4f1;
  padding: 20px;
  border-radius: 10px;
  margin-bottom: 20px;
}

.avatar {
  border-radius: 50%;
  margin-bottom: 20px;
}

.search-bar {
  width: 100%;
  padding: 10px;
  margin-bottom: 10px;
  border: 1px solid #ddd;
  border-radius: 4px;
}

table {
  width: 100%;
  border-collapse: collapse;
  margin-top: 20px;
}

th, td {
  padding: 12px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

th {
  background-color: #f2f2f2;
}

tr:hover {
  background-color: #f5f5f5;
}
</style>
