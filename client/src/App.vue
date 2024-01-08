<template>
  <div id="app">
    <Header v-if="$route.path !== '/admin'" />
    <Header v-if="$route.path !== '/student'" />
    <Header v-if="$route.path !== '/teacher'" />

    <router-view></router-view>
  </div>
</template>

<script>
import Header from "./components/Header/Header.vue";
import Admin from "./components/Admi/Admin.vue";

export default {
  name: "App",
  components: {},
};
</script>

<style>
/* Add your global styles here */
</style>
