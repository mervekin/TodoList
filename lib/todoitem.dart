import 'package:flutter/material.dart';
class  TodoItem extends StatelessWidget {
  const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Icon(
                                    Icons.notes_outlined,
                                    size: 50,
                                  ),
                                  Text(
                                    todo[index],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 21),
                                  ),
                                  Checkbox(
                                      value: isChecked,
                                      onChanged: (val) => {
                                            setState(() {
                                              isChecked = val!;
                                            })
                                          })
                                ],
                              ),
                            ),
                          );
}
}