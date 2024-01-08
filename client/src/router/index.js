import { createRouter, createWebHistory } from "vue-router";
import Header from "../components/Header/Header.vue";
import Admin from "../components/Admi/Admin.vue";
import Student from "../components/Student/Student.vue";
import Teacher from "../components/Teacher/Teacher.vue";
import Espace_Etudiant from "../components/Espace_Etudiant/Stage.vue";
import Stage_Observation from "../components/Stage_Observation/Observation.vue";
import Stage_PFA from "../components/Stage_PFA/PFA.vue";
import Stage_PFE from "../components/Stage_PFE/PFE.vue";
import Espace_observation from "../components/Espace_observation/informations_stage.vue";
import Espace_pfa from "../components/Espace_pfa/informations_pfa.vue";
import Espace_pfe from "../components/Espace_pfe/informations_pfe.vue";
import Dashboard from "../components/Dashboard/Dashboard.vue";
const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    { path: "/", component: Header },
    { path: "/admin", component: Admin, meta: { role: "admin" } },
    { path: "/student", component: Student, meta: { role: "student" } },
    { path: "/teacher", component: Teacher, meta: { role: "teacher" } },
    { path: "/informations_stage",component:Espace_observation},
    { path: "/informations_pfa",component:Espace_pfa},
    { path: "/informations_pfe",component:Espace_pfe},
    { path: "/stage", component: Espace_Etudiant },
    { path: "/stage/Observation", component: Stage_Observation },
    { path: "/stage/PFA", component: Stage_PFA },
    { path: "/stage/PFE", component: Stage_PFE },
    { path: "/Dashboard", component: Dashboard },
  ],
});

export default router;
