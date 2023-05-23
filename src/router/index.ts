import { createRouter, createWebHistory } from "vue-router";
import TodoView from "../views/TodoView.vue";

const routes = [{ path: "/", component: TodoView }];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;
