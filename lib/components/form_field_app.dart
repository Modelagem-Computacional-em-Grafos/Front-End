import 'package:flutter/material.dart';

class FormFieldApp extends StatefulWidget {
  const FormFieldApp({super.key});

  @override
  State<FormFieldApp> createState() => _FormFieldAppState();
}

class _FormFieldAppState extends State<FormFieldApp> {
  final _formKey = GlobalKey<FormState>();

  String? _validarBateria(String? value) {
    if (value == null || value.isEmpty) {
      return 'É necessário de um valor';
    }
    if (value is int) {
      int number = int.tryParse(value)!;
      if (number < 10000) {
        return 'A bateria precisa ter um tamanho mínimo de 10000 mAh';
      } else if (number > 29000) {
        return 'A bateria precisa ter um tamanho máximo de 29000 mAh';
      } else {
        return null;
      }
    } else {
      return 'Informe um valor válido';
    }
  }

  String? _validarTanqueDeInsumo(String? value) {
    if (value == null || value.isEmpty) {
      return 'É necessário de um valor';
    } else if (value is int) {
      int number = int.tryParse(value)!;
      if (number > 100000) {
        return 'A quantidade máxima de insumo é de XXXXXXX Litros';
      } else if (number < 30) {
        return 'A quantidade mínima de insumo é de 30 Litros';
      } else {
        return null;
      }
    } else {
      return 'Informe um valor válido';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'A bateria precisa ter um tamanho máximo de 29000 mAh',
        ),
        const Text(
          'E um tamanho minimo de 10000 mAh',
        ),
        Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                validator: _validarBateria,
                decoration: const InputDecoration(
                  labelText: 'Bateria',
                  hintText: 'Informe a quantidade de bateria',
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'A quantidade de insumo máximo é de 30 Litros',
              ),
              const Text(
                'A quantidade mínima de insumo é de XXXXXXX Litros',
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                validator: _validarTanqueDeInsumo,
                decoration: const InputDecoration(
                  labelText: 'Tanque de insumo',
                  hintText: '(Em Litros) Quanto tem cada tanque de insumo?',
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Enviar Dados'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
