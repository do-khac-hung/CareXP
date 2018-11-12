namespace CareXP.Northwind {
    export enum OrderShippingState {
        NotShipped = 0,
        Shipped = 1
    }
    Serenity.Decorators.registerEnumType(OrderShippingState, 'CareXP.Northwind.OrderShippingState', 'Northwind.OrderShippingState');
}

