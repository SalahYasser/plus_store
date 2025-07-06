import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plus_store/features/home/presentation/views/widgets/home_view_body.dart';
import '../cubits/products_cubit/products_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit(Dio())..getProducts(),

      child: BlocBuilder<ProductsCubit, ProductsState>(
        builder: (context, state) {
          return Scaffold(
            body:
                state is ProductsLoading
                    ? const Center(child: CircularProgressIndicator())
                    : state is ProductsFailure
                    ? Center(child: Text(state.errMessage))
                    : state is ProductsSuccess
                    ? state.products.isEmpty
                        ? Center(child: Text('No products found'))
                        : HomeViewBody(products: state.products)
                    : SizedBox(),
          );
        },
      ),
    );
  }
}
