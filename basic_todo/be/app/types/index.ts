import { Router } from "express";

export interface IModel {
  _id?: string | any;
  createdAt?: string | Date;
  updatedAt?: string | Date;
  deleted?: Boolean;
}

export interface ITodoModel extends IModel {
  name: string;
}

export interface IRoute {
  url: string;
  route: Router;
}

export type IRoutes = IRoute[];

export interface IQuery {
  page?: number;
  limit?: number;
  filter?: any;
  populate?: string;
}
