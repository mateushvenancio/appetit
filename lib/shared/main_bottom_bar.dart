import 'package:appetit/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class MainBottomBar extends StatelessWidget {
  final bool active;
  final int quantidade;
  final Function onAdd;
  final Function onRemove;
  final Function onButtonTap;
  final double total;

  const MainBottomBar({
    this.active = false,
    this.quantidade = 1,
    this.onAdd,
    this.onRemove,
    this.onButtonTap,
    this.total = 0,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 180),
      height: active ? 75 : 0,
      child: Material(
        elevation: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.remove,
                      color: quantidade <= 1
                          ? Colors.grey[400]
                          : ConstantColors.primaryColor,
                    ),
                    onPressed: onRemove,
                  ),
                  Center(
                    child: Text(
                      '$quantidade',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.add,
                      color: quantidade >= 99
                          ? Colors.grey[400]
                          : ConstantColors.primaryColor,
                    ),
                    onPressed: onAdd,
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 4,
              child: GestureDetector(
                onTap: () {
                  if (onButtonTap != null) onButtonTap();
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: ConstantColors.primaryColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Adicionar',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'R\$' + total.toStringAsFixed(2).replaceAll('.', ','),
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
