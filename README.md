# Agioapp

- Entities list:
    User{
        id: String,
        username: String,
        password: String,
        email: String,
        creationDate: Date,
        permission: Permission
    }

    Debt{
        id: String,
        value: Float,
        paid: Float,
        parcels: List<Parcel>,
        shark: User,
        debtor: User
    }

    Parcel{
        id: String,
        value: Float,
        dueDate: Date,
    }

    Permission {
        SHARK,
        DEBTOR
    }