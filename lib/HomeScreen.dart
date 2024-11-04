import 'package:flutter/material.dart';
import 'AddScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Welcome to Notes",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'data:image/jpeg;base64,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'), // Replace with actual logo image
                ),
              ],
            ),
            const Text(
              "Have a great Day",
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            const SizedBox(height: 20),
            const Text(
              "My Priority Task",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.start, // Align cards to the left
              children: [
                _priorityCard("using figma and other tools",
                    "Mobile App UI Design", "2 hours Ago", Icons.phone_android),
                SizedBox(width: 20), // Adds space between cards
                _priorityCard(
                    "complete guru shot challenge",
                    "Capture Sun Rise Shots",
                    "4 hours Ago",
                    Icons.camera_alt_outlined),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Tasks",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: CircleBorder(), // Use CircleBorder for a circular button
                    padding: EdgeInsets.all(20), // Adjust padding for desired size
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddScreen()),
                    );
                  },
                  child: Icon(Icons.add), // Icon for adding task
                  
                ),
              ],
            ),
            Expanded(
                child:
                    _taskTabs()), // Ensuring it expands to fit remaining space
          ],
        ),
      ),
    );
  }

  Widget _priorityCard(
      String description, String title, String time, IconData icon) {
    return Container(
      width: 140,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceBetween, // Aligns children to occupy full width
            children: [
              Text(time, style: TextStyle(fontSize: 12, color: Colors.black54)),
              Icon(icon, color: Colors.grey), // Changed color to grey
            ],
          ),
          SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            description,
            style: TextStyle(fontSize: 12, color: Colors.black54),
          ),
        ],
      ),
    );
  }

  Widget _taskTabs() {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            labelColor: Colors.black87,
            unselectedLabelColor: Colors.black54,
            indicatorColor: Colors.green,
            tabs: [
              Tab(text: "Today's Task"),
              Tab(text: "Weekly Task"),
              Tab(text: "Monthly Task"),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                _taskList(),
                Center(child: Text("Weekly Task")),
                Center(child: Text("Monthly Task")),
              ],
            ),
          ),
        ],
      ),
    );
  }

 Widget _taskList() {
  return ListView(
    children: [
      _taskItem("Complete Assignment #2", "13 September 2022", Colors.red),
      _taskItem("Submit Fee Challan", "18 September 2022", Colors.green),
      _taskItem("Prepare Presentation", "25 September 2022", Colors.blue),
      _taskItem("Attend Team Meeting", "30 September 2022", Colors.orange),
    ],
  );
}

Widget _taskItem(String title, String date, Color color) {
  return Card(
    elevation: 4, // Add elevation for shadow effect
    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16), // Margin around the card
    child: ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16), // Adjust padding
      leading: Icon(Icons.task_alt, color: color),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(date),
      trailing: Icon(Icons.more_vert),
    ),
  );
}

}
