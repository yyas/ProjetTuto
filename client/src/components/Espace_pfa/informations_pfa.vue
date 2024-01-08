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
        <p>PFAs disponibles:</p>
        <table>
          <thead>
            <tr>
              <th>ID</th>
              <th>Sujet</th>
              <th>Nom</th>
              <th>Prénom</th>
              <th>Date de début</th>
              <th>Date de fin</th>
              <th>Entreprise</th>
              <th>Encadrant</th>
              <th>Binome</th>
              <th>Pièce à joindre</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="pfa in filteredPfas" :key="pfa.id">
              <td>{{ pfa.id }}</td>
              <td>{{ pfa.nom }}</td>
              <td>{{ pfa.prenom }}</td>
              <td>{{ pfa.sujet }}</td>
              <td>{{ pfa.date_debut }}</td>
              <td>{{ pfa.date_fin }}</td>
              <td>{{ pfa.entreprise }}</td>
              <td>{{ pfa.encadrent }}</td>
              <td v-if="pfa.binome">{{ pfa.binome }}</td>
              <td v-else></td>
              <td>{{ pfa.piece_a_joindre }}</td>
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
      pfa: [],
      searchTerm: "", // Add a new data property for the search term
    };
  },
  computed: {
    // Filtered PFAs based on the search term
    filteredPfas() {
      return this.pfa.filter((pfa) => this.matchesSearchTerm(pfa));
    },
  },
  created() {
    // Fetch PFAs when the component is created
    this.fetchPfas();
  },
  methods: {
    fetchPfas() {
      // Call your API endpoint to fetch PFAs
      // You may want to use a library like axios for making HTTP requests
      // Example using fetch:
      fetch("http://localhost:3000/api/get-pfa")
        .then((response) => response.json())
        .then((data) => {
          this.pfa = data;
        })
        .catch((error) => {
          console.error("Error fetching PFAs:", error);
        });
    },
    matchesSearchTerm(pfa) {
      // Function to check if a PFA matches the search term
      const lowerCaseSearch = this.searchTerm.toLowerCase();
      return (
        pfa.sujet.toLowerCase().includes(lowerCaseSearch) ||
        pfa.nom.toLowerCase().includes(lowerCaseSearch) ||
        pfa.prenom.toLowerCase().includes(lowerCaseSearch) ||
        pfa.entreprise.toLowerCase().includes(lowerCaseSearch)
        // Add more conditions as needed for other fields
      );
    },
  },
};
</script>

<style scoped>
/* Your existing styles can be retained or modified as needed */
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
