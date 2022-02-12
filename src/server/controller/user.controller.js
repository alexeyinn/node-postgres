const db = require("../db");

class UserController {
  async createUser(req, res) {
    const { name, surname } = req.body;
    const newPerson = await db.query(
      "INSERT INTO person (name, surname) values ($1, $2) RETURNING *",
      [name, surname]
    );
    res.json(newPerson.rows[0]);
  }
  async getAllUsers(req, res) {}
  async getUser(req, res) {}
  async updateUser(req, res) {}
  async deleteUser(req, res) {}
}

module.exports = new UserController();
