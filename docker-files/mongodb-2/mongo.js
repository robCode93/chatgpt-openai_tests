const MongoClient = require('mongodb').MongoClient;
const uri = "mongodb://localhost:27017/";
const client = new MongoClient(uri, { useNewUrlParser: true });
client.connect(err => {
  const db = client.db("test");
  const collection = db.collection("users");
  const newValues = [
    { ID: 1, Name: 'User 1', Password: 'pass1', LastLogin: new Date(), MembershipStatus: 'active', CreationDate: new Date() },
    { ID: 2, Name: 'User 2', Password: 'pass2', LastLogin: new Date(), MembershipStatus: 'active', CreationDate: new Date() },
    { ID: 3, Name: 'User 3', Password: 'pass3', LastLogin: new Date(), MembershipStatus: 'inactive', CreationDate: new Date() },
    { ID: 4, Name: 'User 4', Password: 'pass4', LastLogin: new Date(), MembershipStatus: 'active', CreationDate: new Date() },
    { ID: 5, Name: 'User 5', Password: 'pass5', LastLogin: new Date(), MembershipStatus: 'inactive', CreationDate: new Date() },
    { ID: 6, Name: 'User 6', Password: 'pass6', LastLogin: new Date(), MembershipStatus: 'active', CreationDate: new Date() },
    { ID: 7, Name: 'User 7', Password: 'pass7', LastLogin: new Date(), MembershipStatus: 'inactive', CreationDate: new Date() },
    { ID: 8, Name: 'User 8', Password: 'pass8', LastLogin: new Date(), MembershipStatus: 'active', CreationDate: new Date() },
    { ID: 9, Name: 'User 9', Password: 'pass9', LastLogin: new Date(), MembershipStatus: 'inactive', CreationDate: new Date() },
    { ID: 10, Name: 'User 10', Password: 'pass10', LastLogin: new Date(), MembershipStatus: 'active', CreationDate: new Date() }
  ];
  collection.insertMany(newValues, function(err, res) {
    console.log("Number of documents inserted: " + res.insertedCount);
  });
  collection.find({}).sort({ ID: 1 }).toArray(function(err, result) {
    console.log(result);
    client.close();
  });
});