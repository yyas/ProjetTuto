import "./assets/main.css";

import { createApp } from "vue";
import App from "./App.vue";
import router from "./router";
import Vue3Toastify from "vue3-toastify";
const app = createApp(App);

app.use(router);
app.use(Vue3Toastify, {
  /* options */
});
app.mount("#app");
