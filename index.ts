import * as e from 'edgedb';
import * as q from './dbschema/edgeql-js';

const client = e.createClient();
const test = async () => {
	const query = q.insert(q.default.Test, { grade: 0 });
	return await query.run(client);
}

test();