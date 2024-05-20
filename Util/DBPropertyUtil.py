class PropertyUtil:
    @staticmethod
    def get_property_string():
        server_name="LAPTOP-JS8BDPBR\MSSQLSERVER01"
        database_name="VirtualArtGallery"

        conn_str = (
            f"Driver={{SQL Server}};"
            f"Server={server_name};"
            f"Database={database_name};"
            f"Trusted_Connection=yes;"
        )

        return conn_str