import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:portfolio/constants/constants.dart';

class Contact extends StatefulWidget {
  final Key contactKey;
  const Contact({super.key, required this.contactKey});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final _messageController = TextEditingController();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      key: widget.contactKey,
      width: width,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const Text(
                  "What's Next?",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w200,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Get in Touch!",
                  style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 600,
                  child: Text(
                    "I'm currently looking for new opportunities, my inbox is always open. Whether you have a question or just want to say hi, I'll try my best to get back to you!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w200,
                        color: Colors.white.withOpacity(0.5)),
                    softWrap: true,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: width <= web ? 30 : 250),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    padding: EdgeInsets.symmetric(
                        horizontal: width <= mobile ? 12 : 30, vertical: 12),
                    decoration: BoxDecoration(
                        color: primaryColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20)),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 50,
                            child: TextField(
                              controller: _nameController,
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 2)),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 2)),
                                hintText: "Name",
                                hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(0.4),
                                    fontWeight: FontWeight.w200),
                                fillColor: Colors.white,
                              ),
                              style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w200),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 50,
                            child: TextField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 2)),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 2)),
                                hintText: "Email",
                                hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(0.4),
                                    fontWeight: FontWeight.w200),
                                fillColor: Colors.white,
                              ),
                              style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w200),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SingleChildScrollView(
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              height: 200,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8)),
                                  border: Border.all(
                                      color: Colors.white, width: 2)),
                              child: TextField(
                                controller: _messageController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Message...",
                                  contentPadding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  hintStyle: TextStyle(
                                      color: Colors.white.withOpacity(0.4),
                                      fontWeight: FontWeight.w200),
                                  fillColor: Colors.white,
                                ),
                                style: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w200),
                                minLines: null,
                                maxLines: null,
                                expands: true,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                child: MaterialButton(
                                  onPressed: () async {
                                    await http.post(
                                        Uri.parse(
                                            "https://getform.io/f/681b0d5c-542e-41c5-b982-cd7620c5c832"),
                                        body: {
                                          "name": _nameController.text,
                                          "email": _emailController.text,
                                          "message": _messageController.text
                                        }).then((value) {
                                      if (value.statusCode == 200) {
                                        _nameController.clear();
                                        _emailController.clear();
                                        _messageController.clear();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                                content: Text(
                                                    "Message sent successfully!")));
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                                content: Text(
                                                    "Message failed to send!")));
                                      }
                                    });
                                  },
                                  color: primaryColor,
                                  height: 50,
                                  child: const Text(
                                    "Send!",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 30,
            ),

            // Footer
          ],
        ),
      ),
    );
  }
}
