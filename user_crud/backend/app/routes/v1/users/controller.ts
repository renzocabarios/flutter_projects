import service from "./service.js";
import { transaction } from "../../../utils/index.js";
import { startSession, ClientSession } from "mongoose";
import { Request, Response } from "express";

const getAll = async (_req: Request, _res: Response) => {
  const data = await service.getAll();
  _res.send({
    data,
    status: "success",
    message: "Get user success",
    meta: {},
  });
};

const getById = async (_req: Request, _res: Response) => {
  const { id } = _req.params;
  const data = await service.getById(id);
  _res.send({
    data,
    status: "success",
    message: "Get user success",
    meta: {},
  });
};
const add = async (_req: Request, _res: Response) => {
  const session: ClientSession = await startSession();
  _res.send(
    await transaction(
      session,
      async () => {
        return await service.add({ ..._req.body }, session);
      },
      "Create user"
    )
  );
};

const update = async (_req: Request, _res: Response) => {
  const session: ClientSession = await startSession();
  const { id } = _req.params;
  const { password, ...res } = _req.body;
  _res.send(
    await transaction(
      session,
      async () => {
        return await service.update({ _id: id }, res, session);
      },
      "Update user"
    )
  );
};

const removeOne = async (_req: Request, _res: Response) => {
  const session: ClientSession = await startSession();

  const { id } = _req.params;
  _res.send(
    await transaction(
      session,
      async () => {
        return await service.removeOne({ _id: id }, session);
      },
      "Delete user"
    )
  );
};

export { getAll, getById, add, update, removeOne };
