import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plants/features/home_feature/presentation/bloc/home_bloc.dart';
import 'package:plants/features/home_feature/presentation/widgets/product_widgets/product_item.dart';

class ProductItemListView extends StatelessWidget {
  const ProductItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if(state is HomeSuccessState){
          return Expanded(
            child: ListView.builder(
                itemCount: state.homePlantsResponseEntity.length,
                itemBuilder: (context, index) {
                  return ProductItem(
                    image: state.homePlantsResponseEntity[index].imageUrl,
                    nameDesc: state.homePlantsResponseEntity[index].commonName,
                    yearDesc: 0,
                    statusDesc: state.homePlantsResponseEntity[index].status,
                  );
                }
            ),
          );
        }else{
          return Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ProductItem(
                    image: 'https://fakeimg.pl/600x400',
                    nameDesc: 'N/A',
                    yearDesc: 0,
                    statusDesc: 'N/A',
                  );
                }
            ),
          );
        }

      },
    );
  }
}
