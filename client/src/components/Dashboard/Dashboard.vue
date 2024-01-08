<template>
    <div class="dashboard-container">
      <h1>Tableau de bord</h1>
  
      <div class="button-container">
        <router-link to="/informations_stage">
          <button class="stage-button">Stage Observation</button>
        </router-link>
  
        <router-link to="/informations_pfa">
          <button class="stage-button">Stage Technique</button>
        </router-link>
  
        <router-link to="/informations_pfe">
          <button class="stage-button">Stage Fin de Formation</button>
        </router-link>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    name: 'Dashboard',
  };
  </script>
  
  <style scoped>
  .dashboard-container {
    max-width: 600px;
    margin: 50px auto;
    text-align: center;
  }
  
  h1 {
    color: #333;
  }
  
  .button-container {
    display: flex;
    flex-direction: column;
    gap: 20px;
  }
  
  .stage-button {
    background-color: #007bff;
    color: #fff;
    padding: 15px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
  }
  
  .stage-button:hover {
    background-color: #0056b3;
  }
  </style>
  