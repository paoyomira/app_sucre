// Importaciones Flutter
import 'dart:io';

import 'package:app_sucre/models/models.dart';
import 'package:app_sucre/providers/providers.dart';
import 'package:app_sucre/services/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
// Importaciones Aplicación
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class CitizenReportScreen extends StatefulWidget {
  const CitizenReportScreen({Key? key}) : super(key: key);

  @override
  _CitizenReportScreen createState() => _CitizenReportScreen();
}

class _CitizenReportScreen extends State<CitizenReportScreen> {
  final ImagePicker _picker = ImagePicker();
  List<XFile>? _imageFileList = [];

  void selectedImages() async {
    final List<XFile>? selectedImages = await _picker.pickMultiImage();
    if (selectedImages!.isNotEmpty) {
      _imageFileList!.addAll(selectedImages);
    }
    print('Image List Lenght: ' + _imageFileList!.length.toString());
    setState(() {});
  }

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
        body: Container(
          color: const Color(0xffF8FAFB),
          padding: const EdgeInsets.all(20.0),
          child: Form(
              key: reportForm.formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(12)),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    margin: const EdgeInsets.all(0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: DropdownButtonHideUnderline(
                            child: DropdownButtonFormField(
                                value: reportForm.selectedOption,
                                decoration: const InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    labelText: 'Tipo de Reporte',
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffF8FAFB)))),
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
                  const SizedBox(height: 30.0),
                  TextFormField(
                    minLines: 6,
                    maxLines: 8,
                    onChanged: (value) => reportForm.description = value,
                    validator: (value) {
                      if (value != null && value.length <= 10) {
                        return 'Por favor, brindenos más detalles';
                      } else {
                        if (value != null && value.length > 500) {
                          return 'Ya no puede escribir más texto. ';
                        }
                      }
                    },
                    // autofocus: true,
                    decoration: InputDecoration(
                      hintText: 'Descripción del Reporte',
                      labelText: 'Descripción',
                      hoverColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0xff24d7ca), width: 2.0),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      floatingLabelStyle: const TextStyle(
                        color: Colors.black87,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      // suffixIcon: const Icon(Icons.description_outlined),
                    ),
                    // onChanged: (valor) {},
                  ),
                  const SizedBox(height: 20.0),
                  TextButton(
                      onPressed: () {
                        selectedImages();
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'Tomar Fotografia',
                          style: TextStyle(
                            color: Color(0xff00D4CE),
                            fontSize: 25.0,
                          ),
                        ),
                      ),
                      style: TextButton.styleFrom(
                          elevation: 10.0,
                          shadowColor: Colors.black,
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ))),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.builder(
                          itemCount: _imageFileList!.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3),
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Image.file(
                                File(_imageFileList![index].path),
                                fit: BoxFit.cover,
                              ),
                            );
                          }),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  // EvidencePhotosButtonWidget(),
                  const SizedBox(height: 30),
                  MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      disabledColor: Colors.grey,
                      elevation: 0,
                      color: Colors.deepPurple,
                      child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 60, vertical: 15),
                          child: Text(
                            reportForm.isLoading ? 'Espere' : 'Reportar',
                            style: const TextStyle(color: Colors.white),
                          )),
                      onPressed: reportForm.isLoading
                          ? null
                          : () async {
                              FocusScope.of(context).unfocus();

                              if (!reportForm.isValidForm()) return;
                              reportForm.isLoading = true;

                              final Response response =
                                  await apiService.saveReport(reportForm);
                              // print(errorMessage);
                              if (response.statusCode == 200) {
                                print(response.body);
                                Navigator.pushReplacementNamed(context, 'home');
                              } else {
                                if (response.statusCode == 401) {
                                  NotificationProvider.showSnackbar(
                                      'Las credenciales no son correctas!');
                                }
                                reportForm.isLoading = false;
                              }
                            })
                ],
              )),
        ));
    // Form(
    // key: reportForm.formKey,
    // autovalidateMode: AutovalidateMode.onUserInteraction,
    // child:));
  }

  Widget evidence() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(height: 20.0),
        Text('Evidencia Fotográfica'),
      ],
    );
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
