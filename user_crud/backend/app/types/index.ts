import { Router } from "express";

export interface IModel {
  _id?: string | any;
  deleted?: Boolean;
}

export interface IUserModel extends IModel {
  firstName: string;
  lastName: string;
}

export interface IRoute {
  url: string;
  route: Router;
}

export type IRoutes = IRoute[];
