/*
 * Copyright 2018 University of Padua, Italy
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package it.unipd.dei.webapp.database;

import it.unipd.dei.webapp.resource.Employee;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Lists all the employees in the database.
 * 
 * @author Nicola Ferro (ferro@dei.unipd.it)
 * @version 1.00
 * @since 1.00
 */
public final class ListEmployeeDatabase {

	/**
	 * The SQL statement to be executed
	 */
	private static final String STATEMENT = "SELECT badge, surname, age, salary FROM Ferro.Employee";

	/**
	 * The connection to the database
	 */
	private final Connection con;

	/**
	 * Creates a new object for listing all the employees.
	 * 
	 * @param con
	 *            the connection to the database.
	 */
	public ListEmployeeDatabase(final Connection con) {
		this.con = con;
	}

	/**
	 * Lists all the employees in the database.
	 * 
	 * @return a list of {@code Employee} object.
	 * 
	 * @throws SQLException
	 *             if any error occurs while searching for employees.
	 */
	public List<Employee> listEmployee() throws SQLException {

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		// the results of the search
		final List<Employee> employees = new ArrayList<Employee>();

		try {
			pstmt = con.prepareStatement(STATEMENT);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				employees.add(new Employee(rs.getInt("badge"), rs
						.getString("surname"), rs.getInt("age"),
						rs.getInt("salary")));
			}
		} finally {
			if (rs != null) {
				rs.close();
			}

			if (pstmt != null) {
				pstmt.close();
			}

			con.close();
		}

		return employees;
	}
}
