import 'package:flutter/material.dart';

class IncDecButton extends StatelessWidget {
  const IncDecButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: const Icon(Icons.remove),
          onPressed: () {
            // _bloc.decrement();
          },
        ),
        Container(
          width: 60,
          child: StreamBuilder<int>(
            // stream: _bloc.counterStream,
            builder: (context, snapshot) {
              return TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  // _bloc.setCounter(int.tryParse(value) ?? 0);
                },
                controller:
                    TextEditingController(text: snapshot.data.toString()),
              );
            },
          ),
        ),
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            // _bloc.increment();
          },
        ),
      ],
    );
  }
}
