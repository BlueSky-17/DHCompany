<?php
require_once('connection.php');
class Admin
{
    public $username;
    public $password;
    public $createDate;
    public $updateDate;

    public function __construct($username, $password, $createDate, $updateDate)
    {
        $this->username = $username;
        $this->password = $password;
        $this->createDate = $createDate;
        $this->updateDate = $updateDate;
    }

    static function insert($username, $password)
    {
        $password = password_hash($password, PASSWORD_DEFAULT);
        $db = DB::getInstance();
        $req = $db->query("INSERT INTO admin (username, password, createDate, updateDate) VALUES ('$username', '$password', NOW(), NOW());");
        return $req;
    }

    static function delete($username)
    {
        $db = DB::getInstance();
        $req = $db->query("DELETE FROM admin WHERE username = '$username';");
        return $req;
    }

    static function validation($username, $password)
    {
        $db = DB::getInstance();
        $req = $db->query("SELECT * FROM admin WHERE username = '$username'");

        if (@password_verify($password, $req->fetch_assoc()['password']))
            return true;
        else
            return false;
    }

    static function changePassword($username, $oldpassword, $newpassword)
    {
        if (Admin::validation($username, $oldpassword)) {
            $password = password_hash($newpassword, PASSWORD_DEFAULT);
            $db = DB::getInstance();
            $req = $db->query(
                "UPDATE admin
                SET password = '$password', updateDate = NOW()
                WHERE username = '$username';"
            );
            return $req;
        } else {
            return false;
        }
    }

    static function changePassword_($username, $newpassword)
    {
        $password = password_hash($newpassword, PASSWORD_DEFAULT);
        $db = DB::getInstance();
        $req = $db->query(
            "UPDATE admin
            SET password = '$password', updateDate = NOW()
            WHERE username = '$username';"
        );
        return $req;
    }

    static function getAll()
    {
        $db = DB::getInstance();
        $req = $db->query("SELECT * FROM admin");
        $admins = [];
        foreach ($req->fetch_all(MYSQLI_ASSOC) as $admin) {
            $admins[] = new Admin(
                $admin['username'],
                $admin['password'],
                $admin['createDate'],
                $admin['updateDate']
            );
        }
        return $admins;
    }
}
