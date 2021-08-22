/**
 * @description Default Service Interface for Framework
 * @author Stephen Moss
 * @date 21st August 2021
 */
public interface DefaultService {

        /**
         * @description initialise the service
         * @return result of initialisation
         */
        String initialiseService();

        /**
         * @description peform the service
         * @return result of perform
         */
        String performService();

        /**
         * @description close the service
         * @return result of close
         */
        String closeService();

}
