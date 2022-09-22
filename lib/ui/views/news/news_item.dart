import 'package:flutter/material.dart';
import 'package:getx_boilerplate/data/models/new_model.dart';

class NewItem extends StatelessWidget {
  const NewItem({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Articles data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.blue.shade100)),
      child: Column(
        children: [
          Text(data.title ?? ""),
          Row(
            children: [
              Flexible(
                child: Text(
                  data.content ?? "",
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Flexible(
                flex: 1,
                child: Image.network(
                  data.urlToImage ?? "",
                  errorBuilder: (context, error, stackTrace) => Container(),
                  height: 200,
                  width: 200,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
