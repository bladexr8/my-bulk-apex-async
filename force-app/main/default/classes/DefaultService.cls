/**
 * @description Default Service Interface for Framework
 * @author Stephen Moss
 * @date 21st August 2021
 */
public global interface DefaultService {

        /**
         * @description initialise the service
         * @return String Value
         */
        String initialiseService();

        /**
         * @description peform the service
         * @return String Value
         */
        String performService();

        /**
         * @description close the service
         * @return String Value
         */
        String closeService();

}
