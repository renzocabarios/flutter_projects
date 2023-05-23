import axios from "axios";

const http = axios.create({
  baseURL: `https://api-simple-todo.onrender.com/api/v1/`,
  headers: { "Content-Type": "application/json" },
});

const get = async (url: string) => {
  return await http.get(url);
};

const destroy = async (url: string) => {
  return await http.delete(url);
};

export default { get, destroy };
