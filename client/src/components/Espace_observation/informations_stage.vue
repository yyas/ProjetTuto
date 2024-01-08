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
        <p>Observations disponibles:</p>
        <table>
          <!-- Table headers remain the same -->
          <thead>
            <tr>
              <th>ID</th>
              <th>Sujet</th>
              <th>Date de début</th>
              <th>Date de fin</th>
              <th>Entreprise</th>
              <th>Encadrant</th>
              <th>Binome</th>
              <th>Pièce à joindre</th>
              <th>Nom</th>
              <th>Prénom</th>
            </tr>
          </thead>
          <tbody>
            <!-- Filtered observations based on the search term -->
            <tr v-for="observation in filteredObservations" :key="observation.id">
              <!-- Display observation details as before -->
              <td>{{ observation.id }}</td>
              <td>{{ observation.sujet }}</td>
              <td>{{ observation.date_debut }}</td>
              <td>{{ observation.date_fin }}</td>
              <td>{{ observation.entreprise }}</td>
              <td>{{ observation.encadrent }}</td>
              <td v-if="observation.binome">{{ observation.binome }}</td>
              <td v-else></td>
              <td>{{ observation.piece_a_joindre }}</td>
              <td>{{ observation.nom }}</td>
              <td>{{ observation.prenom }}</td>
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
      observations: [],
      searchTerm: "", // Add a new data property for the search term
    };
  },
  computed: {
    // Filtered observations based on the search term
    filteredObservations() {
      return this.observations.filter((observation) =>
        this.matchesSearchTerm(observation)
      );
    },
  },
  created() {
    // Fetch observations when the component is created
    this.fetchObservations();
  },
  methods: {
    fetchObservations() {
      // Call your API endpoint to fetch observations
      // You may want to use a library like axios for making HTTP requests
      // Example using fetch:
      fetch("http://localhost:3000/api/get-observation")
        .then((response) => response.json())
        .then((data) => {
          this.observations = data;
        })
        .catch((error) => {
          console.error("Error fetching observations:", error);
        });
    },
    matchesSearchTerm(observation) {
      // Function to check if an observation matches the search term
      const lowerCaseSearch = this.searchTerm.toLowerCase();
      return (
        observation.sujet.toLowerCase().includes(lowerCaseSearch) ||
        observation.nom.toLowerCase().includes(lowerCaseSearch) ||
        observation.prenom.toLowerCase().includes(lowerCaseSearch)||
        observation.entreprise.toLowerCase().includes(lowerCaseSearch)
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

/* Responsive Styles */
@media (max-width: 768px) {
  .container {
    width: 90%;
  }

  table {
    font-size: 14px;
  }
}

@media (max-width: 600px) {
  table {
    font-size: 12px;
  }
}
</style>
