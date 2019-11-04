        public static bool CheckLuhn(ContextIdentifier contextIdentifier, string cardNumber)
        {
            // create ApplicationErrorTrap object
            ApplicationErrorTrap errorTrap = new ApplicationErrorTrap();

            #region Check preconditions

            // Check condition ----------------------------------------------------------------
            errorTrap.CheckPrecondition
                (
                contextIdentifier != null,
                CardValidatorUtilityMessage.NullContextIdentifierParameter,
                null
                );

            errorTrap.CheckPrecondition
                (
                ValueValidator.IsValuePresentAsString(cardNumber),
                CardValidatorUtilityMessage.InvalidCardNumberParameter,
                "The cardNumber parameter cannot be null or an empty string",
                contextIdentifier
                );


            errorTrap.PropagateTrappedErrors
                (
                new CardValidatorUtilityException
                (
                null,
                CardValidatorUtilityMessage.CheckLuhnPreconditionError
                )
                );
            // END Check condition ------------------------------------------------------------

            #endregion Check preconditions

            bool retvalue = false; // implicit value for check is "False"

            int factor = 1;
            int luhnsum = 0;

            for (int i=cardNumber.Length-1; i >= 0; i--)
            {
                if (!char.IsDigit(cardNumber[i])) break; // quit if non-digit sign is found

                int inum = int.Parse(cardNumber[i].ToString());
                if (factor == 2)
                {
                    inum *= 2;
                    if (inum >= 10) inum = inum - 9; // sum of the two digits for the two digits sum
                }

                luhnsum += inum;
                factor = (factor ==1) ? 2 : 1;
            }
            if (luhnsum%10 ==0) retvalue = true;
            return retvalue;
        }
