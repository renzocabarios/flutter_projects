import todosRoute from "./todos/route";
import { IRoutes, IRoute } from "../../types";

const routes: IRoutes = [
  {
    url: "todos",
    route: todosRoute,
  },
];

export default routes.map((e: IRoute) => {
  e.url = `v1/${e.url}`;
  return e;
});
