/**
 * @description Default Service Interface 
 * Implementation Example for Framework
 * @author Stephen Moss
 * @date 21st August 2021
 */
public class DefaultServiceImpl implements DefaultService {
        /**
         * @description initialise the service
         * @return result of initialisation
         */
        public String initialiseService() {
            return 'Default Service Initialised';
        }

        /**
         * @description peform the service
         * @return result of perform
         */
        String performService() {
            return 'Default Service Performed';
        }

        /**
         * @description close the service
         * @return result of close
         */
        String closeService() {
            return 'Default Service Closed';
        }
}
