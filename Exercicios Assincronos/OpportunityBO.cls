public with sharing class OpportunityBO {

    // Sche Exe 1
    public static void criarContratoSched(){

        String CRON = '0 23 15 * * ?';
        // Schedule the test job
        String jobId = System.schedule('Criar Contratos para Opportunities',
                                         CRON, new OpportunityCaseWonSchee());
    }

    // Queaueble Exe 1
    //Call
    public static void oppSemContatosQueueable(List<Opportunity> opportunities){

        oppSemContatosQueueable opSCQueue = new oppSemContatosQueueable(opportunities);
        // enqueue the job for processing
        ID jobID = System.enqueueJob(opSCQueue);
    }

    // Queaueble Exe 2
    //Call
    public static void oppComDataFechQueable(){

        oppComDataFechamento opSCQueue = new oppComDataFechamento();
        // enqueue the job for processing
        ID jobID = System.enqueueJob(opSCQueue); //call queue exe2
    }
}