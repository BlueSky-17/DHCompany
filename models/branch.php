<?php
require_once('connection.php');
class Branch
{
    public $id;
    public $name;
    public $address;
    public $createAt;
    public $updateAt;

    public function __construct($id, $name, $address, $createAt, $updateAt)
    {
        $this->id = $id;
        $this->name = $name;
        $this->address = $address;
        $this->createAt = $createAt;
        $this->updateAt = $updateAt;
    }

    static function getAll()
    {
        $db = DB::getInstance();
        $req = $db->query("SELECT * FROM branch");
        $companies = [];
        foreach ($req->fetch_all(MYSQLI_ASSOC) as $branch) {
            $companies[] = new Branch(
                $branch['id'],
                $branch['name'],
                $branch['address'],
                $branch['createAt'],
                $branch['updateAt']
            );
        }
        return $companies;
    }

    static function get($id)
    {
        $db = DB::getInstance();
        $req = $db->query("SELECT * FROM branch WHERE id = $id");
        $result = $req->fetch_assoc();
        $branch = new Branch(
            $result['id'],
            $result['name'],
            $result['address'],
            $result['createAt'],
            $result['updateAt']
        );
        return $branch;
    }

    static function insert($name, $address)
    {
        $db = DB::getInstance();
        $req = $db->query(
            "
            INSERT INTO branch (name, address, createAt, updateAt)
            VALUES ('$name', '$address', NOW(), NOW())
            ;"
        );
        return $req;
    }

    static function delete($id)
    {
        $db = DB::getInstance();
        $req = $db->query("DELETE FROM branch WHERE id = $id;");
        return $req;
    }

    static function update($id, $name, $address)
    {
        $db = DB::getInstance();
        $req = $db->query("UPDATE branch SET name = '$name', address = '$address', updateAt = NOW() WHERE id = $id;");
        return $req;
    }
}