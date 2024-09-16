import 'package:birghtfutureadmissions/view/home/controller/lead.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewLeads extends GetView<LeadController> {
  const NewLeads({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
        return RefreshIndicator(
          onRefresh: controller.getLeads,
          child: controller.isLoading.value
              ? Center(child: CircularProgressIndicator.adaptive(),)
              : Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total: ",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16
                          ),
                        ),
                        Text("${controller.leadModel.value!.data!.length} Student",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: controller.leadModel!.value!.data!.length,
                      itemBuilder: (_, index){
                        var data = controller.leadModel!.value!.data![index];
                        return Container(
                          margin: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            color: Colors.indigo.shade100
                          ),
                          child: ListTile(
                            title: Text("${data.name}",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            subtitle: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("${data.email}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text("${data.phone}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text("${data.date}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            trailing: SizedBox(
                              width: 105,
                              child: Row(
                                children: [
                                  Container(
                                    color: Colors.white,
                                    child: IconButton(
                                      padding: EdgeInsets.all(0),
                                      onPressed: (){},
                                      icon: Icon(Icons.check_circle, color: Colors.green,),
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    color: Colors.white,
                                    child: IconButton(
                                      padding: EdgeInsets.all(0),
                                      onPressed: (){},
                                      icon: Icon(Icons.call, color: Colors.black,),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),

                        );
                      },
                    ),
                  ),
                ],
              ),
        );
      }
    );
  }
}
