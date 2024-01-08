<template>
  <div id="app-container">
    <Header />
    <router-view />
    <!-- Router outlet for content -->
  </div>
</template>

<script setup>
import Header from "../Header/Header.vue"; // Adjust the path as needed
</script>

<style scoped>
/* Your header styles here */
</style>
