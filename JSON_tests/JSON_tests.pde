JSONObject J;
JSONArray booleans;
void setup() {
  //constructor
  J = new JSONObject();
  //sets various values in the JSON
  J.setInt("Swag", 1);
  J.setFloat("Yolo", PI);
  J.setBoolean("Yoloocats", false);
  saveJSONObject(J, "swag.txt");
  //constructor
  booleans = new JSONArray();
  //makes the array
  for (int i = 0; i < 5; i++) {
    JSONObject temp = new JSONObject();
    temp.setInt("id", i);
    if (i%2 == 0) {
      temp.setBoolean("yes", true);
    } 
    else {
      temp.setBoolean("yes", false);
    } 
    booleans.setJSONObject(i, temp);
  }
  saveJSONArray(booleans, "yolo.txt");
}

