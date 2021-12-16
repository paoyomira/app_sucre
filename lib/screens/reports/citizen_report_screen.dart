// Importaciones Flutter
import 'package:app_sucre/models/models.dart';
import 'package:app_sucre/providers/providers.dart';
import 'package:app_sucre/services/services.dart';
import 'package:app_sucre/ui/input_decorations.dart';
import 'package:flutter/material.dart';

// Importaciones Aplicación
import 'package:app_sucre/widgets/widgets.dart';
import 'package:provider/provider.dart';

class CitizenReportScreen extends StatefulWidget {
  const CitizenReportScreen({Key? key}) : super(key: key);

  @override
  _CitizenReportScreen createState() => _CitizenReportScreen();
}

class _CitizenReportScreen extends State<CitizenReportScreen> {
  @override
  Widget build(BuildContext context) {
    final reportForm = Provider.of<CitizerReportFormProvider>(context);
    final apiService = Provider.of<ApiService>(context);

    var lista = apiService.incidents.map((item) {
      return DropdownMenuItem(
        value: item,
        child: Text(item.nombre.toString()),
      );
    }).toList();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Reporte Ciudadano'),
        ),
        body: Form(
            key: reportForm.formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(12)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  margin: const EdgeInsets.all(0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: DropdownButtonHideUnderline(
                          child: DropdownButtonFormField(
                              value: reportForm.selectedOption,
                              items: lista,
                              isExpanded: true,
                              onChanged: (opt) {
                                setState(() {
                                  reportForm.selectedOption =
                                      opt as IncidentsResponse?;
                                });
                              }),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                const IncidenceDescriptionWidget(),
                const SizedBox(height: 20.0),
              ],
            )));
    // Form(
    // key: reportForm.formKey,
    // autovalidateMode: AutovalidateMode.onUserInteraction,
    // child:));
  }
}
// class CitizenReportScreen extends StatelessWidget {
//   const CitizenReportScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Reporte Ciudadano'),
//       ),
//       body: ListView(
//         padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
//         children: [
//           const Text('Reportar Incidencia'),
//           Row(
//       children: <Widget>[
//         const Icon(Icons.select_all),
//         const SizedBox(width: 30.0),   
//         Expanded(
//           child: DropdownButton(
//             value: _opcionSeleccionada,
//             items: getOpcionesDropdown(),
//             onChanged: (opt) {
//               setState(() {
//                 _opcionSeleccionada = opt;
//               });
//             },
//           ),
//         )

//       ],
//     ),
//           const SizedBox(
//             height: 20.0,
//           ),
//           const IncidenceDetailWidget(),
//           const SizedBox(
//             height: 20.0,
//           ),
//           const IncidenceDescriptionWidget(),
//           const SizedBox(
//             height: 20.0,
//           ),
//           const Text('Fotos Evidencia'),
//           const SizedBox(
//             height: 20.0,
//           ),
//           const SizedBox(
//             height: 20.0,
//           ),
//           TextButton(onPressed: () {}, child: const Text('Tomar Fotografia')),
//           const SizedBox(
//             height: 20.0,
//           ),
//           const EvidencePhotosButtonWidget(),
//         ],
//       ),
//     );

//     // const Text('Reportar Incidencia'),
//     // const SizedBox(
//     //   height: 20.0,
//     // ),
//     // const IncidenceDetailWidget(),
//     // const SizedBox(
//     //   height: 20.0,
//     // ),
//     // const IncidenceDescriptionWidget(),
//     // const SizedBox(
//     //   height: 20.0,
//     // ),
//     // const Text('Fotos Evidencia'),
//     // const SizedBox(
//     //   height: 20.0,
//     // ),
//     // const SizedBox(
//     //   height: 20.0,
//     // ),
//     // TextButton(onPressed: () {}, child: const Text('Tomar Fotografia')),
//     // const SizedBox(
//     //   height: 20.0,
//     // ),
//     // const EvidencePhotosButtonWidget(),
//   }
// }

// // class CitizenReportScreen extends StatefulWidget {
// //   const CitizenReportScreen({Key? key}) : super(key: key);

// //   @override
// //   _CitizenReportScreenState createState() => _CitizenReportScreenState();
// // }

// // class _CitizenReportScreenState extends State<CitizenReportScreen> {
// //   @override
// //   Widget build(BuildContext context) {
// //     final apiService = Provider.of<ApiService>(context);
// //     return Scaffold(
// //         appBar: AppBar(
// //           title: const Text('Reporte Ciudadano'),
// //         ),
// //         body: ListView.builder(
// //           padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
// //           itemCount: apiService.incidents.length,
// //           scrollDirection: Axis.vertical,
// //           itemBuilder: (_, int index) =>
// //               IncidenceDetailWidget(incident: apiService.incidents[index]),
// //         ));

// //     // const Text('Reportar Incidencia'),
// //     // const SizedBox(
// //     //   height: 20.0,
// //     // ),
// //     // const IncidenceDetailWidget(),
// //     // const SizedBox(
// //     //   height: 20.0,
// //     // ),
// //     // const IncidenceDescriptionWidget(),
// //     // const SizedBox(
// //     //   height: 20.0,
// //     // ),
// //     // const Text('Fotos Evidencia'),
// //     // const SizedBox(
// //     //   height: 20.0,
// //     // ),
// //     // const SizedBox(
// //     //   height: 20.0,
// //     // ),
// //     // TextButton(onPressed: () {}, child: const Text('Tomar Fotografia')),
// //     // const SizedBox(
// //     //   height: 20.0,
// //     // ),
// //     // const EvidencePhotosButtonWidget(),
// //   }
// // }
