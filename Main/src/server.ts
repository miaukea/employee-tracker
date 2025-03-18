// imports
import express from 'express';
import { QueryResult } from 'pg';
import { pool, connectToDb } from './connection.js';

await connectToDb();

const PORT = process.env.PORT || 3000;
const app = express();

// middleware
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

// creates an employee
app.post('/api/new-employee', ({ body }, res) => {
    const sql = `INSERT INTO employees (first_name, last_name, role_id)
        VALUES ($1)`;
    const params = [body.first_name];

    pool.query(sql, params, (err, result) => {
        if (err) {
            res.status(400).json({ error: err.message });
            return;
        }
        res.json({
            message: 'Successfully added!',
            data: body,
        });
    });
});

// reads all employees
app.get('/api/employees', (_req, res) => {
    const sql = `SELECT id, first_name, last_name AS employee FROM employees`;

    pool.query(sql, (err: Error, result: QueryResult) => {
        if (err) {
            res.status(500).json({ error: err.message });
            return;
        }
        const { rows } = result;
        res.json({
            message: 'Success!',
            data: rows,
        });
    });
});

// delete an entry
app.delete('/api/employees/:id', (req, res) => {
    const sql = `DELETE FROM employees WHERE id = $1`;
    const params = [req.params.id];
    
    pool.query(sql, params, (err: Error, result: QueryResult) => {
        if (err) {
            res.status(400).json({ error: err.message });
        } else if (!result.rowCount) {
            res.json({
                message: 'Employee not found',
            });
        } else {
            res.json({
                message: 'Successfully deleted!',
                changes: result.rowCount,
                id: req.params.id,
            });
        }
    });
});