<template>
  <div>
    <div class="header">
      <button @click="goHome" class="home-button">Home</button>
      <h2>Stage technique</h2>
    </div>

    <form
      enctype="multipart/form-data"
      @submit.prevent="submitForm"
      class="my-form"
    >
      <label for="sujet" class="label">Nom:</label>
      <input type="text" id="nom" v-model="formData.nom" class="input" />
      <label for="sujet" class="label">Prenom:</label>
      <input type="text" id="prenom" v-model="formData.prenom" class="input" />
      <label for="sujet" class="label">Sujet:</label>
      <input type="text" id="sujet" v-model="formData.sujet" class="input" />

      <label for="dateDebut" class="label">Date de début:</label>
      <input
        type="date"
        id="dateDebut"
        v-model="formData.dateDebut"
        class="input"
      />

      <label for="dateFin" class="label">Date de fin:</label>
      <input
        type="date"
        id="dateFin"
        v-model="formData.dateFin"
        class="input"
      />

      <label for="entreprise" class="label">Entreprise:</label>
      <input
        type="text"
        id="entreprise"
        v-model="formData.entreprise"
        class="input"
      />

      <label for="encadrant" class="label">Encadrant de stage:</label>
      <input
        type="text"
        id="encadrant"
        v-model="formData.encadrant"
        class="input"
      />

      <label for="binome" class="label">Binôme:</label>
      <input type="text" id="binome" v-model="formData.binome" class="input" />
      <label for="file" class="label">Fichier:</label>
      <input type="file" id="file" @change="handleFileChange" class="input" />

      <button type="submit" @click="Back" class="button">Enregistrer</button>
    </form>
  </div>
</template>


<script setup>
import { ref } from "vue";
import { useRouter } from "vue-router";

const formData = ref({
  sujet: "",
  nom: "",
  prenom: "",
  date_debut: "", // Changed from dateDebut to date_debut
  date_fin: "", // Changed from dateFin to date_fin
  entreprise: "",
  encadrant: "",
  binome: "",
  piece_a_joindre: "",

  // Other fields as required
});

const router = useRouter();
const goHome = () => {
  router.push("/");
};
const handleFileChange = (event) => {
  // Assuming only one file is uploaded
  if (event.target.files.length > 0) {
    formData.value.piece_a_joindre = event.target.files[0];
  }
};

// Function to handle form submission
const submitForm = async () => {
  const form = new FormData(); // This is an instance of the FormData class

  // Iterate over the formData ref and append each item to the form instance
  for (const [key, value] of Object.entries(formData.value)) {
    form.append(key, value);
  }

  // If you are handling a file upload, make sure the file is appended correctly
  // Example:
  // const fileInput = document.querySelector('#file');
  // if (fileInput.files[0]) {
  //   form.append('piece_a_joindre', fileInput.files[0]);
  // }

  try {
    const response = await fetch("http://localhost:3000/api/submit-pfa", {
      method: "POST",
      body: form, // Pass the form instance here, not the Vue ref
      // Note: When using FormData, do not set Content-Type header
      // The browser will set it automatically including the boundary parameter
    });

    // Handle the response...
  } catch (error) {
    console.error("Error submitting form:", error);
  }
};

</script>

<style scoped>
.my-form {
  max-width: 400px;
  margin: auto;
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
  background-color: #fff;
}

.label {
  display: block;
  margin-bottom: 8px;
}

.input,
textarea,
select,
.file-input {
  width: 100%;
  padding: 10px;
  margin-bottom: 16px;
  border: 1px solid #ddd;
  border-radius: 4px;
}

.button {
  background-color: #007bff;
  color: white;
  padding: 12px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

.button:hover {
  background-color: #0056b3;
}

.home-button {
  background-color: #ddd;
  color: #333;
  padding: 10px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

.header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 10px;
  background-color: #f0f0f0;
  border-bottom: 1px solid #ddd;
}

.header h2 {
  margin: 0;
  color: #007bff;
}

.error {
  border-color: #d9534f;
}

.error-message {
  color: #d9534f;
  margin-top: 8px;
}
</style>
